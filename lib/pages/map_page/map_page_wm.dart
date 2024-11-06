import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'map_page_model.dart';
import 'map_page_widget.dart';

final mapKey = GlobalKey();

abstract interface class IMapPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  FutureOr<void> choseCity();
}

MapPageWidgetModel defaultMapPageWidgetModelFactory(BuildContext context) {
  return MapPageWidgetModel(
    MapPageModel(),
  );
}

// TODO: cover with documentation
/// Default widget model for MapPageWidget
class MapPageWidgetModel extends WidgetModel<MapPageWidget, MapPageModel>
    with ThemeProvider
    implements IMapPageWidgetModel {
  MapPageWidgetModel(super.model);

  @override
  Future<void> choseCity() async {
    final city = router.push(ChooseCityRouteWidget());
  }
}
