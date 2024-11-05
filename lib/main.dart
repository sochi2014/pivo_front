import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pivo_front/app.dart';

void main() {
  runZonedGuarded(() {
    runApp(const App());
  }, (error, stackTrace) {
    debugPrintStack(stackTrace: stackTrace);
    debugPrint(error.toString());
  });
}
