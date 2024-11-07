import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/data/service/place_service.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'map_page_model.dart';
import 'map_page_widget.dart';

final mapKey = GlobalKey();

abstract interface class IMapPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueListenable<List<Place>> get placesState;

  ValueListenable<Place?> get selectedPlaceState;

  PageController get controller;

  FutureOr<void> choseCity();

  void onTap(Place value);
}

MapPageWidgetModel defaultMapPageWidgetModelFactory(BuildContext context) {
  return MapPageWidgetModel(
    MapPageModel(),
    AppComponents().placeService,
  );
}

// TODO: cover with documentation
/// Default widget model for MapPageWidget
class MapPageWidgetModel extends WidgetModel<MapPageWidget, MapPageModel>
    with ThemeProvider
    implements IMapPageWidgetModel {
  @override
  final controller = PageController();

  final PlaceService placeService;
  @override
  final ValueNotifier<List<Place>> placesState = ValueNotifier([]);
  @override
  final ValueNotifier<Place?> selectedPlaceState = ValueNotifier(null);

  MapPageWidgetModel(
    super.model,
    this.placeService,
  );

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _init();
  }

  Future<void> _init() async {
    int page = 0;
    List<Place> places = [];
    do {
      places = await placeService.getPlaces(
        offset: page * 10,
        limit: 10,
      );
      final state = placesState.value.toList();
      selectedPlaceState.value = places.firstOrNull;
      state.addAll(places);
      placesState.value = state;
      page++;
    } while (places.isNotEmpty);
  }

  @override
  Future<void> choseCity() async {
    final city = router.push(ChooseCityRouteWidget());
  }

  @override
  void dispose() {
    controller.dispose();
    selectedPlaceState.dispose();
    placesState.dispose();
    super.dispose();
  }

  @override
  void onTap(Place value) {
    final index = placesState.value.indexOf(value);

    if(index > 0){
      controller.jumpToPage(index);
    }
  }
}
