import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/res/assets.dart';

import 'place_detail_page_wm.dart';

// TODO: cover with documentation
/// Main widget for PlaceDetailPage module
@RoutePage()
class PlaceDetailPageWidget
    extends ElementaryWidget<IPlaceDetailPageWidgetModel> {
  const PlaceDetailPageWidget({
    Key? key,
    @pathParam required this.placeId,
    this.place,
    WidgetModelFactory wmFactory = defaultPlaceDetailPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final int placeId;
  final Place? place;

  @override
  Widget build(IPlaceDetailPageWidgetModel wm) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: wm.placeState,
          builder: (context, place, index) {
            if (place == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
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
                      place.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      '${place.address.city ?? ' '}, '
                      '${place.address.street ?? ' '}, '
                      '${place.address.house ?? ' '}',
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: SizedBox(
                      width: 150,
                      child: Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            const Icon(
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
                      child: Image.asset(
                        Assets.pivoa[2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                  Text(place.phoneNumber ?? ''),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: wm.placeState,
        builder: (context, place, index) {
          if (place == null) {
            return const SizedBox.shrink();
          }

          return FloatingActionButton(
            onPressed: () => wm.openReview(place),
            child: const Icon(Icons.reviews_outlined),
          );
        },
      ),
    );
  }
}
