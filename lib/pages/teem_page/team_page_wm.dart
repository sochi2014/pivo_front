import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pivo_front/data/service/geopos_service.dart';
import 'package:pivo_front/domain/entity/geopos.dart';
import 'package:pivo_front/domain/entity/geopos_member.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'team_page_model.dart';
import 'team_page_widget.dart';

final teamMapKey = GlobalKey();

abstract interface class ITeamPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  ValueListenable<List<GeoposMember>> get placesState;

  ValueListenable<GeoposMember?> get selectedPlaceState;

  ValueListenable<bool> get authState;

  PageController get controller;

  FutureOr<void> choseCity();

  void onTap(GeoposMember value);
}

TeamPageWidgetModel defaultTeamPageWidgetModelFactory(BuildContext context) {
  return TeamPageWidgetModel(
    TeamPageModel(),
    AppComponents().geoposService,
    AppComponents().profileUseCase,
  );
}

// TODO: cover with documentation
/// Default widget model for TeamPageWidget
class TeamPageWidgetModel extends WidgetModel<TeamPageWidget, TeamPageModel>
    with ThemeProvider
    implements ITeamPageWidgetModel {
  final ProfileUseCase profileUseCase;

  @override
  final controller = PageController();

  final GeoposService geoposService;
  @override
  final ValueNotifier<List<GeoposMember>> placesState = ValueNotifier([]);
  @override
  final ValueNotifier<GeoposMember?> selectedPlaceState = ValueNotifier(null);

  @override
  ValueListenable<bool> get authState => profileUseCase.repository;

  StreamSubscription<Position>? _positionSubscription;
  Timer? _fetchTimer;

  TeamPageWidgetModel(
    super.model,
    this.geoposService,
    this.profileUseCase,
  );

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    authState.addListener(_listenStatus);
    _listenStatus();
  }

  Future<void> _startLocationStream() async {
    _positionSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        timeLimit: Duration(seconds: 1),
      ),
    ).listen(
      (pos) {
        geoposService.getPlaceById(
          Geopos(
            latitude: pos.latitude,
            longitude: pos.longitude,
          ),
        );
      },
    );

    _fetchTimer = Timer.periodic(
      const Duration(seconds: 1),
      (i) async {
        List<GeoposMember> places = await geoposService.getGeopos();
        placesState.value = places;
      },
    );
  }

  @override
  Future<void> choseCity() async {
    final city = router.push(ChooseCityRouteWidget());
  }

  @override
  void dispose() {
    _stopLocationSteam();
    controller.dispose();
    selectedPlaceState.dispose();
    placesState.dispose();
    super.dispose();
  }

  void _stopLocationSteam() {
    _fetchTimer?.cancel();
    _positionSubscription?.cancel();
    _fetchTimer = null;
    _positionSubscription = null;
  }

  @override
  void onTap(GeoposMember value) {
    final index = placesState.value.indexOf(value);

    if (index > 0) {
      controller.jumpToPage(index);
    }
  }

  void _listenStatus() {
    if(authState.value){
      _startLocationStream();
    }else{
      _stopLocationSteam();
    }
  }
}
