import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/pages/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|PageWidget,Route')
class AppRouter extends RootStackRouter {
  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) async {
        final prefs = SharedPreferencesAsync();
        final isVerificated = await prefs.getBool('verificated') ?? false;

        if (isVerificated ||
            resolver.routeName == VerificationRouteWidget.name) {
          resolver.next();
        } else {
          resolver.redirect(
            VerificationRouteWidget(
              onResult: (didLogin) => resolver.next(didLogin),
            ),
          );
        }
      },
    ),
    // add more guards here
  ];

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: FeedTab.page,
              children: [
                AutoRoute(
                  page: FeedRouteWidget.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'beer/:beerId',
                  page: BeerDatilRouteWidget.page,
                ),
              ],
              initial: true,
            ),
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  page: BeerRouteWidget.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'beer/:beerId',
                  page: BeerDatilRouteWidget.page,
                ),
              ],
            ),
            AutoRoute(
              page: MapTab.page,
              children: [
                AutoRoute(
                  page: MapRouteWidget.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: ChatsTab.page,
              children: [
                AutoRoute(page: DisableRoute.page),
              ],
            ),
            AutoRoute(
              page: ProfileTab.page,
              children: [
                AutoRoute(
                  page: ProfileRouteWidget.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          page: AuthRouteWidget.page,
        ),
        AutoRoute(page: DisableRoute.page),
        AutoRoute(
          page: FeedbackRouteWidget.page,
        ),
        AutoRoute(page: ChooseCityRouteWidget.page),
        AutoRoute(
          page: VerificationRouteWidget.page,
        ),
      ];
}

const FeedTab = EmptyShellRoute('FeedTab');
const CatalogTab = EmptyShellRoute('CatalogTab');
const MapTab = EmptyShellRoute('MapTab');
const ChatsTab = EmptyShellRoute('ChatsTab');
const ProfileTab = EmptyShellRoute('ProfileTab');
