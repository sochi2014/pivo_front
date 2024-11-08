import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/data/service/place_service.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'place_detail_page_model.dart';
import 'place_detail_page_widget.dart';

abstract interface class IPlaceDetailPageWidgetModel implements IWidgetModel {
  ValueListenable<Place?> get placeState;

  void openReview(Place place);
}

PlaceDetailPageWidgetModel defaultPlaceDetailPageWidgetModelFactory(
    BuildContext context) {
  return PlaceDetailPageWidgetModel(
    PlaceDetailPageModel(),
    AppComponents().placeService,
  );
}

// TODO: cover with documentation
/// Default widget model for PlaceDetailPageWidget
class PlaceDetailPageWidgetModel
    extends WidgetModel<PlaceDetailPageWidget, PlaceDetailPageModel>
    with ThemeProvider
    implements IPlaceDetailPageWidgetModel {
  PlaceDetailPageWidgetModel(
    super.model,
    this.placeService,
  );

  final PlaceService placeService;

  @override
  late final ValueNotifier<Place?> placeState = ValueNotifier(widget.place);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadPlace();
  }

  Future<void> _loadPlace() async {
    final place = widget.place ??
        await placeService.getPlaceById(
          widget.placeId,
        );
    placeState.value = place;
  }

  @override
  void openReview(Place place) {
    router.push(
      FeedbackRouteWidget(
        typeFeedback: TypeFeedback.place.name,
        placeId: place.id,
        place: place,
      ),
    );
  }

  @override
  void didUpdateWidget(PlaceDetailPageWidget oldWidget) {
    _loadPlace();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    placeState.dispose();
    super.dispose();
  }
}
