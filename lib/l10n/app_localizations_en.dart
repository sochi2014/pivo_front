import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Beer Harmony';

  @override
  String get birthdayLabel => 'Birthday';

  @override
  String get countryLabel => 'Country';

  @override
  String get check => 'Check';

  @override
  String get verificationTitle => 'Let\'s make sure that you have reached the legal drinking age in your country.';
}
