import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

import 'map_page_model.dart';
import 'map_page_widget.dart';
final mapKey = GlobalKey();

abstract interface class IMapPageWidgetModel implements IWidgetModel {

}

MapPageWidgetModel defaultMapPageWidgetModelFactory(BuildContext context) {
  return MapPageWidgetModel(
    MapPageModel(),
  );
}

// TODO: cover with documentation
/// Default widget model for MapPageWidget
class MapPageWidgetModel extends WidgetModel<MapPageWidget, MapPageModel>
    implements IMapPageWidgetModel {

  MapPageWidgetModel(super.model);
}
