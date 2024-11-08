import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/l10n/app_localizations.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/res/assets.dart';


class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final localizations = AppLocalizations.of(context);
    return Stack(
      children: [
        Positioned.fill(child: _PivoBackground()),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  colorScheme.surface.withOpacity(0.3),
                  colorScheme.surface.withOpacity(0.6),
                  colorScheme.surface.withOpacity(0.9),
                  colorScheme.surface,
                ],
                stops: const [0.1, 0.3, 0.4, 0.5, 0.7],
              ),
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 400,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      localizations.promo,
                      style: theme.textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),
                    ListTile(
                      leading: IconButton.filledTonal(
                        onPressed: () {},
                        icon: Icon(Icons.sports_bar),
                      ),
                      title: Text(localizations.promo1),
                    ),
                    ListTile(
                      leading: IconButton.filledTonal(
                        onPressed: () {},
                        icon: Icon(Icons.people),
                      ),
                      title: Text(localizations.promo2),
                    ),
                    ListTile(
                      leading: IconButton.filledTonal(
                        onPressed: () {},
                        icon: Icon(Icons.sports_bar_outlined),
                      ),
                      title: Text(localizations.promo3),
                    ),
                    SizedBox(height: 40),
                    FilledButton(
                      onPressed: () {
                        context.pushRoute(AuthRouteWidget());
                      },
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            localizations.loginOrRegister,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PivoBackground extends StatelessWidget {
  const _PivoBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..rotateZ(pi / 4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
                _PivoCard(
                  name: Assets.pivoa[2],
                ),
                _PivoCard(
                  name: Assets.pivoa[1],
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
                _PivoCard(
                  name: Assets.pivoa[2],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
                _PivoCard(
                  name: Assets.pivoa[1],
                ),
                _PivoCard(
                  name: Assets.pivoa[2],
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                _PivoCard(
                  name: Assets.pivoa[1],
                ),
                _PivoCard(
                  name: Assets.pivoa[2],
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
                _PivoCard(
                  name: Assets.pivoa[2],
                ),
                _PivoCard(
                  name: Assets.pivoa[0],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PivoCard extends StatelessWidget {
  const _PivoCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        child: Image.asset(
          name,
        ),
      ),
    );
  }
}
