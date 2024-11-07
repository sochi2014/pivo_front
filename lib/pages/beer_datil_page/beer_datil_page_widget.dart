import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/res/assets.dart';

import 'beer_datil_page_wm.dart';

// TODO: cover with documentation
/// Main widget for BeerDatilPage module
@RoutePage()
class BeerDatilPageWidget extends ElementaryWidget<IBeerDatilPageWidgetModel> {
  const BeerDatilPageWidget({
    Key? key,
    @pathParam required this.beerId,
    this.beer,
    WidgetModelFactory wmFactory = defaultBeerDatilPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int beerId;
  final Beer? beer;

  @override
  Widget build(IBeerDatilPageWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: wm.beerState,
          builder: (context, beer, index) {
            if (beer == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final description = beer.description;
            return ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      beer.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      beer.type ?? '',
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(
                              Icons.sports_bar,
                            )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: beer.photo ?? '',
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) => Image.asset(
                          Assets.pivoa[2],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  Text(description ?? ''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
