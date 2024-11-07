import 'package:elementary/elementary.dart';

mixin RefreshMixin<W extends ElementaryWidget, M extends ElementaryModel>
    on WidgetModel<W, M> {
  @override
  void initWidgetModel() {
    super.initWidgetModel();
    loadData();
  }

  Future<void> refresh() => loadData();

  Future<void> loadData();
}
