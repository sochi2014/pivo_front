import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/data/service/beer_service.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'beer_datil_page_model.dart';
import 'beer_datil_page_widget.dart';

abstract interface class IBeerDatilPageWidgetModel
    implements IWidgetModel, IResponsive, IThemeProvider {
  ValueListenable<Beer?> get beerState;

  void openReview(Beer beer);
}

BeerDatilPageWidgetModel defaultBeerDatilPageWidgetModelFactory(
    BuildContext context) {
  return BeerDatilPageWidgetModel(
    BeerDatilPageModel(),
    AppComponents().beerService,
  );
}

// TODO: cover with documentation
/// Default widget model for BeerDatilPageWidget
class BeerDatilPageWidgetModel
    extends WidgetModel<BeerDatilPageWidget, BeerDatilPageModel>
    with ResponsiveWidgetModelMixin, ThemeProvider
    implements IBeerDatilPageWidgetModel {
  BeerDatilPageWidgetModel(
    super.model,
    this.beerService,
  );

  final BeerService beerService;

  @override
  late final ValueNotifier<Beer?> beerState = ValueNotifier(widget.beer);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    _loadBeer();
  }

  Future<void> _loadBeer() async {
    final beer = widget.beer ?? await beerService.getBeerById(widget.beerId);
    beerState.value = beer;
  }

  @override
  void didUpdateWidget(BeerDatilPageWidget oldWidget) {
    _loadBeer();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    beerState.dispose();
    super.dispose();
  }

  @override
  void openReview(Beer beer) {
    router.push(
      FeedbackRouteWidget(
        typeFeedback: TypeFeedback.beer.name,
        beerId: beer.id,
        beer: beer,
      ),
    );
  }
}
