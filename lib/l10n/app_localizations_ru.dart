import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get title => 'Хмельная гармония';

  @override
  String get birthdayLabel => 'День рождения';

  @override
  String get countryLabel => 'Регион';

  @override
  String get check => 'Проверить';

  @override
  String get verificationTitle => 'Давайте убедимся, что вы достигли законного возраста употребления алкоголя в вашей стране.';
}