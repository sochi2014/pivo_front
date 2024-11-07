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
        maxCrossAxisExtent: 300,
        childAspectRatio: 4 / 5,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      );
    }

    if (!topMode && wm.tablet) {
      delegate = const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 5,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      );
    }

    delegate ??= const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 4 / 5,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
    );

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 600,
        ),
        child: RefreshIndicator(
          onRefresh: wm.refresh,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                sliver: PagedSliverGrid<int, Beer>(
                  pagingController: wm.pagingController,
                  gridDelegate: delegate,
                  builderDelegate: PagedChildBuilderDelegate<Beer>(
                    itemBuilder: (context, item, index) {
                      return Card(
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.zero,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          child: InkWell(
                            onTap: () => wm.openBeer(item),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      child: Text(index.toString()),
                                    ),
                                    title: Text(
                                      item.name,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    subtitle: Text(
                                      item.type ?? '',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: item.photo ?? '',
                                        fit: BoxFit.cover,
                                        errorWidget: (_, __, ___) => Image.asset(
                                          Assets.pivoa[2],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        IconButton.filledTonal(
                                          visualDensity: VisualDensity.compact,
                                          onPressed: () {},
                                          icon: Icon(Icons.favorite),
                                        ),
                                        const SizedBox(width: 10),
                                        FilledButton.tonalIcon(
                                          onPressed: () {},
                                          icon: Icon(Icons.comment),
                                          label: Text('0'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
