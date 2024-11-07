import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/app.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/internal/app_dependency.dart';

import 'firebase_options.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppComponents().init();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // // Pass all uncaught "fatal" errors from the framework to Crashlytics
    // if (!kIsWeb) {
    //   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    //
    //   PlatformDispatcher.instance.onError = (error, stack) {
    //     FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    //     return true;
    //   };
    // }

    runApp(
      AppDependency(
        app: App(),
      ),
    );
  }, (error, stackTrace) {
    debugPrintStack(stackTrace: stackTrace);
    debugPrint(error.toString());
  });
}
