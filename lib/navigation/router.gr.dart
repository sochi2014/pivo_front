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
    WidgetModelFactory<
            WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>>
        wmFactory = defaultVerificationPageWidgetModelFactory,
    List<PageRouteInfo>? children,
  }) : super(
          VerificationRouteWidget.name,
          args: VerificationRouteWidgetArgs(
            key: key,
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
        wmFactory: args.wmFactory,
      );
    },
  );
}

class VerificationRouteWidgetArgs {
  const VerificationRouteWidgetArgs({
    this.key,
    this.wmFactory = defaultVerificationPageWidgetModelFactory,
  });

  final Key? key;

  final WidgetModelFactory<
      WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel>> wmFactory;

  @override
  String toString() {
    return 'VerificationRouteWidgetArgs{key: $key, wmFactory: $wmFactory}';
  }
}
