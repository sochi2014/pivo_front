import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/pages/pages.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen|PageWidget,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: FeedTab.page,
              children: [
                AutoRoute(
                  page: FeedRouteWidget.page,
                  initial: true,
                ),
              ],
            ),
            AutoRoute(
              page: CatalogTab.page,
              children: [
                AutoRoute(
                  page: BeerRouteWidget.page,
                  initial: true,
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
                AutoRoute(
                  page: AuthRouteWidget.page,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(page: DisableRoute.page),
        AutoRoute(page: ChooseCityRouteWidget.page),
        AutoRoute(
          page: VerificationRouteWidget.page,
          initial: true,
        ),
      ];
}

const FeedTab = EmptyShellRoute('FeedTab');
const CatalogTab = EmptyShellRoute('CatalogTab');
const MapTab = EmptyShellRoute('MapTab');
const ChatsTab = EmptyShellRoute('ChatsTab');
const ProfileTab = EmptyShellRoute('ProfileTab');
