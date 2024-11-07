import 'package:elementary/elementary.dart';
import 'package:flutter/widgets.dart';

mixin RebuildMixin<W extends ElementaryWidget, M extends ElementaryModel>
    on WidgetModel<W, M> {
  @override
  void didUpdateWidget(W oldWidget) {
    super.didUpdateWidget(oldWidget);
    final element = context as ComponentElement;
    element.markNeedsBuild();
  }
}
