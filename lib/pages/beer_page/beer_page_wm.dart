import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pivo_front/data/service/beer_service.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/beer_config.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'beer_page_model.dart';
import 'beer_page_widget.dart';

abstract interface class IBeerPageWidgetModel
    implements IWidgetModel, IResponsive, IThemeProvider {
  PagingController<int, Beer> get pagingController;

  ValueListenable<(Beer, Beer, Beer)?> get beerTopState;

  ValueListenable<BeerConfig> get configState;

  Future<void> refresh();

  void openBeer(Beer item);
}

BeerPageWidgetModel defaultBeerPageWidgetModelFactory(BuildContext context) {
  return BeerPageWidgetModel(
    BeerPageModel(),
    AppComponents().beerService,
  );
}

// TODO: cover with documentation
/// Default widget model for BeerPageWidget
class BeerPageWidgetModel extends WidgetModel<BeerPageWidget, BeerPageModel>
    with ResponsiveWidgetModelMixin, ThemeProvider
    implements IBeerPageWidgetModel {
  BeerPageWidgetModel(
    super.model,
    this.beerService,
  );

  final BeerService beerService;

  @override
  final pagingController = PagingController<int, Beer>(firstPageKey: 0);

  @override
  final ValueNotifier<BeerConfig> configState = ValueNotifier(
    const BeerConfig(),
  );

  @override
  // TODO: implement beerTopState
  final ValueNotifier<(Beer, Beer, Beer)?> beerTopState = ValueNotifier(null);

  @override
  Future<void> refresh() async {
    pagingController.refresh();
  }

  Future<void> loadBeer(int pageKey) async {
    try {
      List<Beer> beerList = await beerService.getBeer(
        configState.value.copyWith(
          offset: pageKey * 10,
          limit: 10,
        ),
      );

      if (pageKey == 0 && widget.topMode && beerList.length > 3) {
        final [first, second, third] = beerList.sublist(0, 3);
        beerTopState.value = (first, second, third);
        beerList = beerList.sublist(3);
      }

      pagingController.appendPage(beerList, ++pageKey);
    } on Object {
      pagingController.appendLastPage([]);
    }
  }

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    pagingController.addPageRequestListener(loadBeer);
  }

  @override
  void dispose() {
    pagingController.removePageRequestListener(loadBeer);
    configState.dispose();
    super.dispose();
  }

  @override
  void openBeer(Beer item) {
    router.push(
      BeerDatilRouteWidget(
        beerId: item.id,
        beer: item
      ),
    );
  }
}
