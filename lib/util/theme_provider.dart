import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/l10n/app_localizations.dart';

abstract interface class IThemeProvider {
  ThemeData get theme;

  TextTheme get textTheme;

  ColorScheme get colorScheme;

  AppLocalizations get localizations;

  StackRouter get router;
}

mixin ThemeProvider {
  BuildContext get context;

  AppLocalizations get localizations => AppLocalizations.of(context);

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  StackRouter get router => context.router;
}