import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/presentation/pages/feed_page.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';
import 'package:google_fonts/google_fonts.dart';

import 'blocs/details_cubit/details_cubit.dart';
import 'blocs/feed_cubit/feed_cubit.dart';
import 'colors.dart';
import 'infrastructure/repositories/funda_object_repository.dart';

void main() async {
  // The Flutter framework catches errors that occur during callbacks triggered by the framework itself,
  // including errors encountered during the build, layout, and paint phases.
  // Errors that don’t occur within Flutter’s callbacks can’t be caught by the framework,
  // but can be handled by setting up a Zone.
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    final apiService = ApiService(baseUrl);
    final FundaObjectRepository repository = FundaObjectRepository(
      service: apiService,
    );
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kReleaseMode) {
        // In Release mode, report to the application zone for logging into
        // remote tracker (Sentry, Firebase, etc.).
        Zone.current.handleUncaughtError(details.exception, details.stack!);
      } else {
        // In Debug or Profile mode - simply print to console.
        FlutterError.dumpErrorToConsole(details);
      }
    };
    runApp(MyApp(repository: repository));
  }, (Object error, StackTrace stack) {
    reportError(error, stack);
  });
}

class MyApp extends StatelessWidget {
  final FundaObjectRepository repository;

  const MyApp({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildReplyDarkTheme(context),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<FeedCubit>(
            create: (_) => FeedCubit(repository: repository),
            lazy: false,
          ),
          BlocProvider<DetailsCubit>(
            create: (_) => DetailsCubit(repository: repository),
            lazy: false,
          )
        ],
        child: FeedPage(),
      ),
    );
  }

  ThemeData _buildReplyDarkTheme(BuildContext context) {
    final base = ThemeData.dark();
    return base.copyWith(
      bottomAppBarColor: ReplyColors.darkBottomAppBarBackground,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: ReplyColors.darkDrawerBackground,
        modalBackgroundColor: Colors.black.withOpacity(0.7),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: ReplyColors.darkBottomAppBarBackground,
        selectedIconTheme: const IconThemeData(color: ReplyColors.orange300),
        selectedLabelTextStyle:
        GoogleFonts.workSansTextTheme().headline5!.copyWith(
          color: ReplyColors.orange300,
        ),
        unselectedIconTheme: const IconThemeData(color: ReplyColors.greyLabel),
        unselectedLabelTextStyle:
        GoogleFonts.workSansTextTheme().headline5!.copyWith(
          color: ReplyColors.greyLabel,
        ),
      ),
      canvasColor: ReplyColors.black900,
      cardColor: ReplyColors.darkCardBackground,
      chipTheme: _buildChipTheme(
        ReplyColors.blue200,
        ReplyColors.darkChipBackground,
        Brightness.dark,
      ),
      colorScheme: const ColorScheme.dark(
        primary: ReplyColors.blue200,
        primaryVariant: ReplyColors.blue300,
        secondary: ReplyColors.orange300,
        secondaryVariant: ReplyColors.orange300,
        surface: ReplyColors.black800,
        error: ReplyColors.red200,
        onPrimary: ReplyColors.black900,
        onSecondary: ReplyColors.black900,
        onBackground: ReplyColors.white50,
        onSurface: ReplyColors.white50,
        onError: ReplyColors.black900,
        background: ReplyColors.black900Alpha087,
      ),
      textTheme: _buildReplyDarkTextTheme(base.textTheme),
      scaffoldBackgroundColor: ReplyColors.black900,
    );
  }

  ChipThemeData _buildChipTheme(
      Color primaryColor,
      Color chipBackground,
      Brightness brightness,
      ) {
    return ChipThemeData(
      backgroundColor: primaryColor.withOpacity(0.12),
      disabledColor: primaryColor.withOpacity(0.87),
      selectedColor: primaryColor.withOpacity(0.05),
      secondarySelectedColor: chipBackground,
      padding: const EdgeInsets.all(4),
      shape: const StadiumBorder(),
      labelStyle: GoogleFonts.workSansTextTheme().bodyText2!.copyWith(
        color: brightness == Brightness.dark
            ? ReplyColors.white50
            : ReplyColors.black900,
      ),
      secondaryLabelStyle: GoogleFonts.workSansTextTheme().bodyText2!,
      brightness: brightness,
    );
  }

  TextTheme _buildReplyDarkTextTheme(TextTheme base) {
    return base.copyWith(
      headline4: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 34,
        letterSpacing: 0.4,
        height: 0.9,
        color: ReplyColors.white50,
      ),
      headline5: GoogleFonts.workSans(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 0.27,
        color: ReplyColors.white50,
      ),
      headline6: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        letterSpacing: 0.18,
        color: ReplyColors.white50,
      ),
      subtitle2: GoogleFonts.workSans(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        letterSpacing: -0.04,
        color: ReplyColors.white50,
      ),
      bodyText1: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 18,
        letterSpacing: 0.2,
        color: ReplyColors.white50,
      ),
      bodyText2: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        letterSpacing: -0.05,
        color: ReplyColors.white50,
      ),
      caption: GoogleFonts.workSans(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        letterSpacing: 0.2,
        color: ReplyColors.white50,
      ),
    );
  }
}