import 'package:flutter/foundation.dart';

Future<void> reportError(dynamic error, dynamic stackTrace) async {
  // Print the exception to the console.
  print('Caught error: $error');
  if (kReleaseMode) {
    // Log an Exception and Stacktrace to remote tracker in Release mode.
  } else {
    // Print the full stacktrace in Debug and Profile modes.
    print(stackTrace);
  }
}