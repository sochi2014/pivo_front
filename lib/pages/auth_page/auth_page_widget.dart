import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/l10n/app_localizations.dart';
import 'package:pivo_front/res/assets.dart';

import 'auth_page_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPage module
@RoutePage()
class AuthPageWidget extends ElementaryWidget<IAuthPageWidgetModel> {
  const AuthPageWidget({
    Key? key,
    this.authCallback,
    WidgetModelFactory wmFactory = defaultAuthPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final ValueChanged<Profile?>? authCallback;

  @override
  Widget build(IAuthPageWidgetModel wm) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.pivoa[0],
            fit: BoxFit.cover,
          ),
          _AuthForm(wm: wm),
        ],
      ),
    );
  }
}

class _AuthForm extends StatelessWidget {
  const _AuthForm({
    required this.wm,
  });

  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 400,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: StreamBuilder(
                stream: wm.authStateController,
                builder: (context, stateSnapshot) {
                  final state = stateSnapshot.data ?? AuthState.phone;
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: switch (state) {
                      AuthState.phone || AuthState.loadingPhone => _PhoneWidget(
                          key: const Key('phone-widget'),
                          wm: wm,
                          state: state,
                        ),
                      AuthState.register || AuthState.loadingRegister  => _RegisterWidget(
                          key: const Key('register-widget'),
                          wm: wm,
                          state: state,
                        ),
                      AuthState.code => _CodeWidget(wm: wm),
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _CodeWidget extends StatelessWidget {
  const _CodeWidget({
    required this.wm,
  });

  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 33,
        height: 5,
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child: Text(
            'Введите код из email.',
            textAlign: TextAlign.center,
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Pinput(
            hapticFeedbackType: HapticFeedbackType.selectionClick,
            controller: wm.codeController,
            length: 6,
            autofillHints: const [AutofillHints.oneTimeCode],
            cursor: cursor,
            defaultPinTheme: PinTheme(
              width: 56,
              height: 60,
              textStyle: textTheme.titleLarge
                  ?.copyWith(color: colorScheme.onSurfaceVariant),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                color: colorScheme.surfaceVariant,
              ),
            ),
            onCompleted: (_) => wm.confirmCode(),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
      ],
    );
  }
}

class _PhoneWidget extends StatelessWidget {
  const _PhoneWidget({
    super.key,
    required this.wm,
    required this.state,
  });

  final AuthState state;
  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final localizations = AppLocalizations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              localizations.loginHint,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: LayoutBuilder(builder: (context, constrains) {
            final maxWidth = constrains.biggest.width;
            return Flex(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              direction: maxWidth > 300 ? Axis.horizontal : Axis.vertical,
              children: [
                Flexible(
                  flex: maxWidth > 300 ? 2 : 1,
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: wm.emailController,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onBackground,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 48,
                    child: switch (state) {
                      AuthState.phone => FilledButton(
                          onPressed: wm.onSendCode,
                          child:  Center(
                            child: Text(localizations.login),
                          ),
                        ),
                      _ => const FilledButton(
                          onPressed: null,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}


class _RegisterWidget extends StatelessWidget {
  const _RegisterWidget({
    super.key,
    required this.wm,
    required this.state,
  });

  final AuthState state;
  final IAuthPageWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;
    final localizations = AppLocalizations.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Text(
              localizations.registerHint,
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 6,
          child: LayoutBuilder(builder: (context, constrains) {
            final maxWidth = constrains.biggest.width;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: maxWidth > 300 ? 2 : 1,
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: wm.emailController,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onBackground,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        hintText: localizations.email,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                  flex: maxWidth > 300 ? 2 : 1,
                  child: SizedBox(
                    height: 48,
                    child: TextField(
                      textAlign: TextAlign.start,
                      controller: wm.usernameController,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onBackground,
                        overflow: TextOverflow.ellipsis,
                      ),
                      decoration: InputDecoration(
                        hintText: localizations.username,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                  height: 10,
                ),
                Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: 48,
                    child: switch (state) {
                      AuthState.register => FilledButton(
                          onPressed: wm.onRegister,
                          child:  Center(
                            child: Text(localizations.register),
                          ),
                        ),
                      _ => const FilledButton(
                          onPressed: null,
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        ),
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}
