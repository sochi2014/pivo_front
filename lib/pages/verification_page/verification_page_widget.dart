import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/country.dart';

import 'verification_page_wm.dart';

// TODO: cover with documentation
/// Main widget for VerificationPage module
@RoutePage()
class VerificationPageWidget
    extends ElementaryWidget<IVerificationPageWidgetModel> {
  const VerificationPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultVerificationPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IVerificationPageWidgetModel wm) {
    final localizations = wm.localizations;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: !wm.mobile ? 500 : null,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    localizations.verificationTitle,
                    style: wm.textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: wm.dateController,
                          decoration: InputDecoration(
                            labelText: localizations.birthdayLabel,
                          ),
                          // style: wm.textTheme.bodyLarge?.copyWith(
                          //   color: wm.theme.colorScheme.onSurface,
                          // ),
                          enabled: true,
                          readOnly: true,
                          onTap: wm.onDateTimeChanged,
                        ),
                        const SizedBox(height: 16),
                        ValueListenableBuilder(
                          valueListenable: wm.countryState,
                          builder: (context, data, _) {
                            return DropdownButtonFormField<Country>(
                              value: data,
                              items: [
                                for (final country in countryList)
                                  DropdownMenuItem(
                                    value: country,
                                    child: Text(country.name),
                                  ),
                              ],
                              onChanged: wm.onChangeCountry,
                              decoration: InputDecoration(
                                labelText: localizations.countryLabel,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: wm.submit,
                          child: Text(localizations.check),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
