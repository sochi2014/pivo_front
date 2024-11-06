import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/l10n/app_localizations.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/util/responsive_widget.dart';

typedef RouteDestination = ({
  PageRouteInfo<dynamic> route,
  IconData icon,
  String label,
});

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final destinations = <RouteDestination>[
      (
        route: FeedTab(),
        icon: Icons.outdoor_grill,
        label: localizations.feed,
      ),
      (
        route: CatalogTab(),
        icon: Icons.sports_bar,
        label: localizations.catalog,
      ),
      (
        route: MapTab(),
        icon: Icons.map_outlined,
        label: localizations.map,
      ),
      (
        route: ChatsTab(),
        icon: Icons.chat,
        label: localizations.chat,
      ),
      (
        route: ProfileTab(),
        icon: Icons.person,
        label: localizations.profile,
      ),
    ];

    if (context.desktop) {
      return AutoRouter(
        builder: (context, child) {
          var activeIndex = destinations.indexWhere(
            (d) => context.router.isRouteActive(d.route.routeName),
          );
          if (activeIndex == -1) {
            activeIndex = 0;
          }
          print(child);
          return Scaffold(
            body: Row(
              children: [
                MenuDrawer(
                  selectedIndex: activeIndex,
                  destinations: destinations,
                  onSelectedTabChanged: (index) {
                    context.navigateTo(destinations[index].route);
                  },
                ),
                // child is the rendered route stack
                Expanded(child: child)
              ],
            ),
          );
        },
      );
    }

    if (context.tablet) {
      return AutoRouter(
        builder: (context, child) {
          // we check for active route index by using
          // router.isRouteActive method
          var activeIndex = destinations.indexWhere(
            (d) => context.router.isRouteActive(d.route.routeName),
          );
          // there might be no active route until router is mounted
          // so we play it safe
          if (activeIndex == -1) {
            activeIndex = 0;
          }
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  destinations: [
                    for (final d in destinations)
                      NavigationRailDestination(
                        icon: Icon(d.icon),
                        label: Text(d.label),
                      )
                  ],
                  selectedIndex: activeIndex,
                  onDestinationSelected: (index) {
                    // use navigate instead of push so you won't have
                    // many useless route stacks
                    context.navigateTo(destinations[index].route);
                  },
                ),
                // child is the rendered route stack
                Expanded(child: child)
              ],
            ),
          );
        },
      );
    }

    return AutoRouter(
      builder: (context, child) {
        // we check for active route index by using
        // router.isRouteActive method
        var activeIndex = destinations.indexWhere(
          (d) => context.router.isRouteActive(d.route.routeName),
        );
        // there might be no active route until router is mounted
        // so we play it safe
        if (activeIndex == -1) {
          activeIndex = 0;
        }

        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: activeIndex,
            onDestinationSelected: (index) =>
                context.navigateTo(destinations[index].route),
            destinations: [
              for (final d in destinations)
                NavigationDestination(
                  icon: Icon(d.icon),
                  label: d.label,
                )
            ],
          ),
        );
      },
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onSelectedTabChanged,
  });

  final List<RouteDestination> destinations;
  final int selectedIndex;
  final ValueChanged<int> onSelectedTabChanged;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelectedTabChanged,
      children: [
        for (final destination in destinations) ...[
          const SizedBox(height: 4),
          NavigationDrawerDestination(
            label: Text(destination.label),
            icon: Icon(destination.icon),
            // selectedIcon: const Icon(Icons.storefront_rounded),
          ),
        ]
      ],
    );
  }
}
