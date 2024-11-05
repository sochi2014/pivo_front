import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'verification_page_model.dart';
import 'verification_page_widget.dart';

abstract interface class IVerificationPageWidgetModel implements IWidgetModel {}

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
    implements IVerificationPageWidgetModel {
  VerificationPageWidgetModel(super.model);
}
