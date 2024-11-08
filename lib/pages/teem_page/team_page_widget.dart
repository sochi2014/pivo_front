import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/geopos_member.dart';
import 'package:pivo_front/pages/pages.dart';
import 'package:pivo_front/util/pointer_context.dart';

import 'maps/mobile_map.dart';
import 'maps/web_map.dart';

// TODO: cover with documentation
/// Main widget for TeamPage module
@RoutePage()
class TeamPageWidget extends ElementaryWidget<ITeamPageWidgetModel> {
  const TeamPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultTeamPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ITeamPageWidgetModel wm) {
    return ValueListenableBuilder(
        valueListenable: wm.authState,
        builder: (context, auth, _) {
          if (!auth) {
            return const Scaffold(
              body: PromoPage(),
            );
          }

          return Scaffold(
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
                    if (state.isEmpty)
                      Positioned(
                        bottom: 25,
                        right: 0,
                        left:0,
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(wm.localizations.emptyPeople),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
            floatingActionButton: PointerContext(
              child: FloatingActionButton(
                onPressed: wm.choseCity,
                child: const Icon(
                  Icons.location_city,
                ),
              ),
            ),
          );
        });
  }

  Widget _buildMap(List<GeoposMember> state, ValueChanged<GeoposMember> onTap) {
    if (!kIsWeb && !kIsWasm ||
        defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android) {
      return MobileMap(
        key: teamMapKey,
        places: state,
        onTap: onTap,
      );
    }

    return WebMap(
      key: teamMapKey,
      places: state,
      onPlaceTap: onTap,
    );
  }
}
