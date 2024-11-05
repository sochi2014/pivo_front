import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

mixin SnackBarErrorHandlerMixin<W extends ElementaryWidget,
    M extends ElementaryModel> on WidgetModel<W, M> {
  @override
  void onErrorHandle(Object error) {
    super.onErrorHandle(error);

    showSnackBar(error.toString());
  }

  void showSnackBar(String text) {
    if (!isMounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(text),
      ),
    );
  }
}
