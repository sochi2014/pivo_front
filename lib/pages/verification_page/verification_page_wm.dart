import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pivo_front/domain/entity/country.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'verification_page_model.dart';
import 'verification_page_widget.dart';

abstract interface class IVerificationPageWidgetModel
    implements IWidgetModel, IThemeProvider, IResponsive {
  TextEditingController get dateController;

  ValueListenable<Country> get countryState;

  void onDateTimeChanged();

  void onChangeCountry(Country? value);

  void submit();
}

VerificationPageWidgetModel defaultVerificationPageWidgetModelFactory(
  BuildContext context,
) {
  return VerificationPageWidgetModel(
    VerificationPageModel(),
  );
}

// TODO: cover with documentation
/// Default widget model for VerificationPageWidget
class VerificationPageWidgetModel
    extends WidgetModel<VerificationPageWidget, VerificationPageModel>
    with ThemeProvider, ResponsiveWidgetModelMixin
    implements IVerificationPageWidgetModel {
  final _format = DateFormat.yMd();

  @override
  final ValueNotifier<Country> countryState = ValueNotifier(countryList.first);

  @override
  late final dateController =
      TextEditingController(text: _format.format(DateTime.now()));

  VerificationPageWidgetModel(super.model);

  @override
  Future<void> onDateTimeChanged() async {
    final time = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      firstDate: time.copyWith(
        year: time.year - 100,
      ),
      lastDate: time,
    );

    if (selected is! DateTime) {
      return;
    }

    dateController.text = _format.format(selected);
  }

  @override
  void onChangeCountry(Country? value) {
    // TODO: implement onChangeCountry
  }

  @override
  void dispose() {
    countryState.dispose();
    dateController.dispose();
    super.dispose();
  }

  @override
  void submit() {
    final date = _format.tryParse(dateController.text);
    final country = countryState.value;

    if (date == null) {
      return;
    }

    bool isCorrectAge = model.checkAge(date, country);
    if (isCorrectAge) {
      router.navigate(const HomeRoute());
    } else {
      router.push(const DisableRoute());
    }
  }

}
