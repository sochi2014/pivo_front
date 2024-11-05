import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'verification_page_wm.dart';

// TODO: cover with documentation
/// Main widget for VerificationPage module
@RoutePage()
class VerificationPageWidget extends ElementaryWidget<IVerificationPageWidgetModel> {
  const VerificationPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultVerificationPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IVerificationPageWidgetModel wm) {
    return Scaffold(
      body: Column(),
    );
  }
}
