import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/pages/map_page/maps/mobile_map.dart';

import 'map_page_wm.dart';
import 'maps/web_map.dart';

// TODO: cover with documentation
/// Main widget for MapPage module
@RoutePage()
class MapPageWidget extends ElementaryWidget<IMapPageWidgetModel> {
  const MapPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMapPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMapPageWidgetModel wm) {
    return MobileMap(
      key: mapKey,
    );
  }
}
