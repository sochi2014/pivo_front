import 'package:elementary/elementary.dart';
import 'package:pivo_front/entity/country.dart';

// TODO: cover with documentation
/// Default Elementary model for VerificationPage module
class VerificationPageModel extends ElementaryModel {
  VerificationPageModel({super.errorHandler});


  bool checkAge(DateTime date, Country country) {
    final offset = date.difference(DateTime.now());

    final isCorrectAge = offset.inDays / -365 > country.minAge;
    return isCorrectAge;
  }
}
