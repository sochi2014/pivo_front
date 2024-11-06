import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/res/assets.dart';

import 'beer_page_wm.dart';

// TODO: cover with documentation
/// Main widget for BeerPage module
@RoutePage()
class BeerPageWidget extends ElementaryWidget<IBeerPageWidgetModel> {
  const BeerPageWidget({
    Key? key,
    this.topMode = false,
    WidgetModelFactory wmFactory = defaultBeerPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final bool topMode;

  @override
  Widget build(IBeerPageWidgetModel wm) {
    SliverGridDelegate? delegate;

    if (!topMode && wm.desktop) {
      delegate = const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      );
    }

    if (!topMode && wm.tablet) {
      delegate = const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      );
    }

    delegate ??= const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 2 / 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
    );

    return CustomScrollView(
      slivers: [
        PagedSliverGrid<int, Beer>(
          pagingController: wm.pagingController,
          gridDelegate: delegate,
          builderDelegate: PagedChildBuilderDelegate<Beer>(
              itemBuilder: (context, item, index) {
            return Card(
              clipBehavior: Clip.hardEdge,
              margin: EdgeInsets.zero,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CachedNetworkImage(
                        imageUrl: item.photo ?? '',
                        errorWidget: (_, __, ___) =>
                            Image.asset(Assets.pivoa[2]),
                      ),
                      Text(item.name),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
