import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pivo_front/l10n/app_localizations.dart';
import 'package:pivo_front/navigation/router.dart';
import 'package:pivo_front/res/theme.dart';
import 'package:pivo_front/res/util.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Montserrat", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).title,
      routerConfig: _appRouter.config(),
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
    );
  }
}
