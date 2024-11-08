import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pivo_front/data/service/feedback_service.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'feed_page_model.dart';
import 'feed_page_widget.dart';

abstract interface class IFeedPageWidgetModel
    implements IWidgetModel, IResponsive {
  PagingController<int, Feedback> get pagingController;

  Future<void> refresh();

  void onBeerTap(Beer item);

  void onPlaceTap(Place value);
}

FeedPageWidgetModel defaultFeedPageWidgetModelFactory(BuildContext context) {
  return FeedPageWidgetModel(FeedPageModel(), AppComponents().feedbackService);
}

// TODO: cover with documentation
/// Default widget model for FeedPageWidget
class FeedPageWidgetModel extends WidgetModel<FeedPageWidget, FeedPageModel>
    with ResponsiveWidgetModelMixin, ThemeProvider
    implements IFeedPageWidgetModel {
  final FeedbackService feedbackService;

  FeedPageWidgetModel(super.model, this.feedbackService);

  @override
  Future<void> refresh() async {
    pagingController.refresh();
  }

  Future<void> loadFeedback(int pageKey) async {
    try {
      List<Feedback> feedbackList = await feedbackService.getFeedback(
        offset: pageKey * 10,
        limit: 10,
      );

      pagingController.appendPage(feedbackList, ++pageKey);
    } on Object {
      pagingController.appendLastPage([]);
    }
  }

  @override
  final pagingController = PagingController<int, Feedback>(firstPageKey: 0);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    pagingController.addPageRequestListener(loadFeedback);
  }

  @override
  void dispose() {
    pagingController.removePageRequestListener(loadFeedback);
    pagingController.dispose();
    super.dispose();
  }

  @override
  void onBeerTap(Beer item) {
    router.push(
      BeerDatilRouteWidget(beerId: item.id, beer: item),
    );
  }

  @override
  void onPlaceTap(Place value) {
    router.push(
      PlaceDetailRouteWidget(
        placeId: value.id,
        place: value,
      ),
    );
  }
}
