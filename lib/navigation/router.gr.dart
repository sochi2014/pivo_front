// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

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
