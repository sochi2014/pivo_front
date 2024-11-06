import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';

const countryList = [
  Country(
    name: 'Россия',
    localeCode: 'ru',
    minAge: 18,
  ),
  Country(
    name: 'United States',
    localeCode: 'en',
    minAge: 21,
  ),
];

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String localeCode,
    required int minAge,
  }) = _Country;
}
