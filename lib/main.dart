import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda_demo/presentation/feed_page.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';
import 'package:funda_demo/theme.dart';
import 'package:funda_demo/router.dart';

import 'blocs/details_cubit/details_cubit.dart';
import 'blocs/feed_cubit/feed_cubit.dart';
import 'infrastructure/repositories/funda_object_repository.dart';

void main() async {
  // The Flutter framework catches errors that occur during callbacks triggered by the framework itself,
  // including errors encountered during the build, layout, and paint phases.
  // Errors that don’t occur within Flutter’s callbacks can’t be caught by the framework,
  // but can be handled by setting up a Zone.
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    // final apiService = ApiService(baseUrl);
    // final FundaObjectRepository repository = FundaObjectRepository(
    //   service: apiService,
    // );
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
    runApp(MyApp());
  }, (Object error, StackTrace stack) {
    reportError(error, stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildReplyDarkTheme(context),
      // initialRoute: AppRouter.root,
      onGenerateRoute: (settings) => _router.onGenerateRoute(settings.name),
      // home: FeedPage(),
    );
  }
}