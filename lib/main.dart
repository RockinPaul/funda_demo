import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:funda_demo/infrastructure/services/service_bundle.dart';
import 'package:funda_demo/theme.dart';
import 'package:funda_demo/router.dart';
import 'injection_container.dart' as di;

void main() async {
  // The Flutter framework catches errors that occur during callbacks triggered by the framework itself,
  // including errors encountered during the build, layout, and paint phases.
  // Errors that don’t occur within Flutter’s callbacks can’t be caught by the framework,
  // but can be handled by setting up a Zone.
  runZonedGuarded(() async {
    // Service locator initialization for some loose coupling.
    await di.init();

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
    runApp(App());
  }, (Object error, StackTrace stack) {
    reportError(error, stack);
  });
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildReplyDarkTheme(context),
      onGenerateRoute: (settings) => _router.onGenerateRoute(settings.name),
    );
  }

  // We need to dispose the _router when the App widget is disposed
  // in order to close all blocs in the AppRouter.
  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}
