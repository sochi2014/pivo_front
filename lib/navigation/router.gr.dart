// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthPageWidget]
class AuthRouteWidget extends PageRouteInfo<AuthRouteWidgetArgs> {
  AuthRouteWidget({
    Key? key,
    ValueChanged<Profile?>? authCallback,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultAuthPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          AuthRouteWidget.name,
          args: AuthRouteWidgetArgs(
            key: key,
            authCallback: authCallback,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteWidgetArgs>(
          orElse: () => const AuthRouteWidgetArgs());
      return AuthPageWidget(
        key: args.key,
        authCallback: args.authCallback,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class AuthRouteWidgetArgs {
  const AuthRouteWidgetArgs({
    this.key,
    this.authCallback,
    this.wmFactory = defaultAuthPageWidgetModelFactory,
  });

  final Key? key;

  final ValueChanged<Profile?>? authCallback;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'AuthRouteWidgetArgs{key: $key, authCallback: $authCallback, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [BeerDatilPageWidget]
class BeerDatilRouteWidget extends PageRouteInfo<BeerDatilRouteWidgetArgs> {
  BeerDatilRouteWidget({
    Key? key,
    required int beerId,
    Beer? beer,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultBeerDatilPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          BeerDatilRouteWidget.name,
          args: BeerDatilRouteWidgetArgs(
            key: key,
            beerId: beerId,
            beer: beer,
            wmFactory: wmFactory,
          ),
          rawPathParams: {'beerId': beerId},
          initialChildren: children,
        );

  static const String name = 'BeerDatilRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<BeerDatilRouteWidgetArgs>(
          orElse: () =>
              BeerDatilRouteWidgetArgs(beerId: pathParams.getInt('beerId')));
      return BeerDatilPageWidget(
        key: args.key,
        beerId: args.beerId,
        beer: args.beer,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class BeerDatilRouteWidgetArgs {
  const BeerDatilRouteWidgetArgs({
    this.key,
    required this.beerId,
    this.beer,
    this.wmFactory = defaultBeerDatilPageWidgetModelFactory,
  });

  final Key? key;

  final int beerId;

  final Beer? beer;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'BeerDatilRouteWidgetArgs{key: $key, beerId: $beerId, beer: $beer, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [BeerPageWidget]
class BeerRouteWidget extends PageRouteInfo<BeerRouteWidgetArgs> {
  BeerRouteWidget({
    Key? key,
    bool topMode = false,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultBeerPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          BeerRouteWidget.name,
          args: BeerRouteWidgetArgs(
            key: key,
            topMode: topMode,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'BeerRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BeerRouteWidgetArgs>(
          orElse: () => const BeerRouteWidgetArgs());
      return BeerPageWidget(
        key: args.key,
        topMode: args.topMode,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class BeerRouteWidgetArgs {
  const BeerRouteWidgetArgs({
    this.key,
    this.topMode = false,
    this.wmFactory = defaultBeerPageWidgetModelFactory,
  });

  final Key? key;

  final bool topMode;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'BeerRouteWidgetArgs{key: $key, topMode: $topMode, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ChooseCityPageWidget]
class ChooseCityRouteWidget extends PageRouteInfo<ChooseCityRouteWidgetArgs> {
  ChooseCityRouteWidget({
    Profile? profile,
    Key? key,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultChooseCityPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ChooseCityRouteWidget.name,
          args: ChooseCityRouteWidgetArgs(
            profile: profile,
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ChooseCityRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseCityRouteWidgetArgs>(
          orElse: () => const ChooseCityRouteWidgetArgs());
      return ChooseCityPageWidget(
        profile: args.profile,
        key: args.key,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class ChooseCityRouteWidgetArgs {
  const ChooseCityRouteWidgetArgs({
    this.profile,
    this.key,
    this.wmFactory = defaultChooseCityPageWidgetModelFactory,
  });

  final Profile? profile;

  final Key? key;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'ChooseCityRouteWidgetArgs{profile: $profile, key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [DisablePage]
class DisableRoute extends PageRouteInfo<void> {
  const DisableRoute({List<PageRouteInfo>? children})
      : super(
          DisableRoute.name,
          initialChildren: children,
        );

  static const String name = 'DisableRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DisablePage();
    },
  );
}

/// generated route for
/// [FeedPageWidget]
class FeedRouteWidget extends PageRouteInfo<FeedRouteWidgetArgs> {
  FeedRouteWidget({
    Key? key,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultFeedPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FeedRouteWidget.name,
          args: FeedRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'FeedRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeedRouteWidgetArgs>(
          orElse: () => const FeedRouteWidgetArgs());
      return FeedPageWidget(
        key: args.key,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class FeedRouteWidgetArgs {
  const FeedRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultFeedPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'FeedRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [FeedbackPageWidget]
class FeedbackRouteWidget extends PageRouteInfo<FeedbackRouteWidgetArgs> {
  FeedbackRouteWidget({
    Key? key,
    String typeFeedback = 'beer',
    Beer? beer,
    Place? place,
    int? beerId,
    int? placeId,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultFeedbackPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          FeedbackRouteWidget.name,
          args: FeedbackRouteWidgetArgs(
            key: key,
            typeFeedback: typeFeedback,
            beer: beer,
            place: place,
            beerId: beerId,
            placeId: placeId,
            wmFactory: wmFactory,
          ),
          rawQueryParams: {
            'typeFeedback': typeFeedback,
            'beerId': beerId,
            'placeId': placeId,
          },
          initialChildren: children,
        );

  static const String name = 'FeedbackRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<FeedbackRouteWidgetArgs>(
          orElse: () => FeedbackRouteWidgetArgs(
                typeFeedback: queryParams.getString(
                  'typeFeedback',
                  'beer',
                ),
                beerId: queryParams.optInt('beerId'),
                placeId: queryParams.optInt('placeId'),
              ));
      return FeedbackPageWidget(
        key: args.key,
        typeFeedback: args.typeFeedback,
        beer: args.beer,
        place: args.place,
        beerId: args.beerId,
        placeId: args.placeId,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class FeedbackRouteWidgetArgs {
  const FeedbackRouteWidgetArgs({
    this.key,
    this.typeFeedback = 'beer',
    this.beer,
    this.place,
    this.beerId,
    this.placeId,
    this.wmFactory = defaultFeedbackPageWidgetModelFactory,
  });

  final Key? key;

  final String typeFeedback;

  final Beer? beer;

  final Place? place;

  final int? beerId;

  final int? placeId;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'FeedbackRouteWidgetArgs{key: $key, typeFeedback: $typeFeedback, beer: $beer, place: $place, beerId: $beerId, placeId: $placeId, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [MapPageWidget]
class MapRouteWidget extends PageRouteInfo<MapRouteWidgetArgs> {
  MapRouteWidget({
    Key? key,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultMapPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          MapRouteWidget.name,
          args: MapRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'MapRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MapRouteWidgetArgs>(
          orElse: () => const MapRouteWidgetArgs());
      return MapPageWidget(
        key: args.key,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class MapRouteWidgetArgs {
  const MapRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultMapPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'MapRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [ProfilePageWidget]
class ProfileRouteWidget extends PageRouteInfo<ProfileRouteWidgetArgs> {
  ProfileRouteWidget({
    Key? key,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultProfilePageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          ProfileRouteWidget.name,
          args: ProfileRouteWidgetArgs(
            key: key,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteWidgetArgs>(
          orElse: () => const ProfileRouteWidgetArgs());
      return ProfilePageWidget(
        key: args.key,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class ProfileRouteWidgetArgs {
  const ProfileRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultProfilePageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'ProfileRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [VerificationPageWidget]
class VerificationRouteWidget
    extends PageRouteInfo<VerificationRouteWidgetArgs> {
  VerificationRouteWidget({
    Key? key,
    ValueChanged<bool>? onResult,
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultVerificationPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationRouteWidget.name,
          args: VerificationRouteWidgetArgs(
            key: key,
            onResult: onResult,
            wmFactory: wmFactory,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRouteWidget';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationRouteWidgetArgs>(
          orElse: () => const VerificationRouteWidgetArgs());
      return VerificationPageWidget(
        key: args.key,
        onResult: args.onResult,
        wmFactory: args.wmFactory,
      );
    },
  );
}

class VerificationRouteWidgetArgs {
  const VerificationRouteWidgetArgs({
    this.key,
    this.onResult,
    this.wmFactory = defaultVerificationPageWidgetModelFactory,
  });

  final Key? key;

  final ValueChanged<bool>? onResult;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'VerificationRouteWidgetArgs{key: $key, onResult: $onResult, wmFactory: $wmFactory}';
  }
}
