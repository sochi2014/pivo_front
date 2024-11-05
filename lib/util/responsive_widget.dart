import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool isMobile(BuildContext context) {
  return MediaQuery.of(context).size.width < 850;
}

bool isTablet(BuildContext context) {
  return MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;
}

bool isDesktop(BuildContext context) {
  return MediaQuery.of(context).size.width >= 1100;
}

extension ResponsiveX on BuildContext {
  bool get mobile => isMobile(this);

  bool get tablet => isTablet(this);

  bool get desktop => isDesktop(this);
}

abstract interface class IResponsive {
  bool get mobile;

  bool get tablet;

  bool get desktop;
}

mixin ResponsiveWidgetModelMixin<W extends ElementaryWidget,
    M extends ElementaryModel> on WidgetModel<W, M> implements IResponsive {
  @override
  bool get mobile => isMobile(context);

  @override
  bool get tablet => isTablet(context);

  @override
  bool get desktop => isDesktop(context);
}

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.builder,
    this.tabletBuilder,
    required this.mobileBuilder,
  });

  final WidgetBuilder builder;
  final WidgetBuilder? tabletBuilder;
  final WidgetBuilder mobileBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth >= 1100) {
          return builder(context);
        }

        if (constrains.maxWidth >= 850) {
          return tabletBuilder?.call(context) ?? builder(context);
        }

        return mobileBuilder(context);
      },
    );
  }
}
