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
import 'domain/data_sources/remote_data_source_base.dart';
import 'domain/repositories/repository_base.dart';
import 'infrastructure/repositories/repository.dart';

void main() async {
  // The Flutter framework catches errors that occur during callbacks triggered by the framework itself,
  // including errors encountered during the build, layout, and paint phases.
  // Errors that don’t occur within Flutter’s callbacks can’t be caught by the framework,
  // but can be handled by setting up a Zone.
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    final _apiService = ApiService(baseUrl);
    final _repository = Repository(service: _apiService);

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
    runApp(
      App(
        repository: _repository,
        remoteDataSource: _apiService,
      ),
    );
  }, (Object error, StackTrace stack) {
    reportError(error, stack);
  });
}

class App extends StatefulWidget {
  final RepositoryBase repository;
  final RemoteDataSourceBase remoteDataSource;

  const App({
    Key? key,
    required this.repository,
    required this.remoteDataSource,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter(repository: widget.repository);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildReplyDarkTheme(context),
      onGenerateRoute: (settings) => _router.onGenerateRoute(settings.name),
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}
