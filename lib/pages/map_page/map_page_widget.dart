import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/pages/map_page/maps/mobile_map.dart';
import 'package:pivo_front/pages/map_page/maps/web_map.dart';
import 'package:pivo_front/res/assets.dart';
import 'package:pivo_front/util/pointer_context.dart';

import 'map_page_wm.dart';

// TODO: cover with documentation
/// Main widget for MapPage module
@RoutePage()
class MapPageWidget extends ElementaryWidget<IMapPageWidgetModel> {
  const MapPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultMapPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IMapPageWidgetModel wm) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        body: ValueListenableBuilder(
            valueListenable: wm.placesState,
            builder: (context, state, _) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: _buildMap(state, wm.onTap),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 75,
                    child: PointerContext(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: 100,
                          maxWidth: 500,
                        ),
                        child: PageView.builder(
                            controller: wm.controller,
                            itemCount: state.length,
                            itemBuilder: (context, index) {
                              final place = state[index];
                              return Card.filled(
                                child: ListTile(
                                  leading: AspectRatio(
                                    aspectRatio: 1,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl: place.toString(),
                                        errorWidget: (_, __, ___) {
                                          return Image.asset(
                                            Assets.pivoa[1],
                                            fit: BoxFit.cover,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  title: Text(place.name),
                                  subtitle:
                                      Text('${place.address.city ?? ' '}, '
                                          '${place.address.street ?? ' '}, '
                                          '${place.address.house ?? ' '}'),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              );
            }),
        floatingActionButton: PointerContext(
          child: FloatingActionButton(
            onPressed: wm.choseCity,
            child: const Icon(
              Icons.location_city,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMap(List<Place> state, ValueChanged<Place> onTap) {
    if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android) {
      return MobileMap(
        key: mapKey,
        places: state,
        onTap: onTap,
      );
    }

    return WebMap(
      key: mapKey,
      places: state,
      onPlaceTap: onTap,
    );
  }
}
