import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287385382),
      surfaceTint: Color(4287385382),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958024),
      onPrimaryContainer: Color(4281471744),
      secondary: Color(4285945927),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958024),
      onSecondaryContainer: Color(4281013769),
      tertiary: Color(4284637235),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293453228),
      onTertiaryContainer: Color(4280098048),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283581500),
      outline: Color(4286936171),
      outlineVariant: Color(4292330168),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871913),
      inversePrimary: Color(4294948491),
      primaryFixed: Color(4294958024),
      onPrimaryFixed: Color(4281471744),
      primaryFixedDim: Color(4294948491),
      onPrimaryFixedVariant: Color(4285478929),
      secondaryFixed: Color(4294958024),
      onSecondaryFixed: Color(4281013769),
      secondaryFixedDim: Color(4293246889),
      onSecondaryFixedVariant: Color(4284236081),
      tertiaryFixed: Color(4293453228),
      onTertiaryFixed: Color(4280098048),
      tertiaryFixedDim: Color(4291611026),
      onTertiaryFixedVariant: Color(4283058462),
      surfaceDim: Color(4293384143),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294765282),
      surfaceContainerHigh: Color(4294370781),
      surfaceContainerHighest: Color(4293976023),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285150221),
      surfaceTint: Color(4287385382),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289094714),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283907373),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287524444),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282795290),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286084935),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4280424981),
      onSurfaceVariant: Color(4283318328),
      outline: Color(4285291604),
      outlineVariant: Color(4287133550),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871913),
      inversePrimary: Color(4294948491),
      primaryFixed: Color(4289094714),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287188004),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287524444),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285748805),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286084935),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284440113),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384143),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294765282),
      surfaceContainerHigh: Color(4294370781),
      surfaceContainerHighest: Color(4293976023),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282128384),
      surfaceTint: Color(4287385382),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285150221),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281539855),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283907373),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280558336),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282795290),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281147675),
      outline: Color(4283318328),
      outlineVariant: Color(4283318328),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871913),
      inversePrimary: Color(4294961116),
      primaryFixed: Color(4285150221),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283179008),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283907373),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282328857),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282795290),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281282054),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293384143),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963690),
      surfaceContainer: Color(4294765282),
      surfaceContainerHigh: Color(4294370781),
      surfaceContainerHighest: Color(4293976023),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948491),
      surfaceTint: Color(4294948491),
      onPrimary: Color(4283572992),
      primaryContainer: Color(4285478929),
      onPrimaryContainer: Color(4294958024),
      secondary: Color(4293246889),
      onSecondary: Color(4282592028),
      secondaryContainer: Color(4284236081),
      onSecondaryContainer: Color(4294958024),
      tertiary: Color(4291611026),
      onTertiary: Color(4281545225),
      tertiaryContainer: Color(4283058462),
      onTertiaryContainer: Color(4293453228),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898637),
      onSurface: Color(4293976023),
      onSurfaceVariant: Color(4292330168),
      outline: Color(4288646532),
      outlineVariant: Color(4283581500),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976023),
      inversePrimary: Color(4287385382),
      primaryFixed: Color(4294958024),
      onPrimaryFixed: Color(4281471744),
      primaryFixedDim: Color(4294948491),
      onPrimaryFixedVariant: Color(4285478929),
      secondaryFixed: Color(4294958024),
      onSecondaryFixed: Color(4281013769),
      secondaryFixedDim: Color(4293246889),
      onSecondaryFixedVariant: Color(4284236081),
      tertiaryFixed: Color(4293453228),
      onTertiaryFixed: Color(4280098048),
      tertiaryFixedDim: Color(4291611026),
      onTertiaryFixedVariant: Color(4283058462),
      surfaceDim: Color(4279898637),
      surfaceBright: Color(4282464050),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280753689),
      surfaceContainerHigh: Color(4281411619),
      surfaceContainerHighest: Color(4282200877),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950037),
      surfaceTint: Color(4294948491),
      onPrimary: Color(4280946176),
      primaryContainer: Color(4291264595),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293575598),
      onSecondary: Color(4280619269),
      secondaryContainer: Color(4289497718),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291874198),
      onTertiary: Color(4279768832),
      tertiaryContainer: Color(4287992673),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898637),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292593596),
      outline: Color(4289896341),
      outlineVariant: Color(4287725686),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976023),
      inversePrimary: Color(4285544722),
      primaryFixed: Color(4294958024),
      onPrimaryFixed: Color(4280420864),
      primaryFixedDim: Color(4294948491),
      onPrimaryFixedVariant: Color(4284098562),
      secondaryFixed: Color(4294958024),
      onSecondaryFixed: Color(4280224771),
      secondaryFixedDim: Color(4293246889),
      onSecondaryFixedVariant: Color(4282986786),
      tertiaryFixed: Color(4293453228),
      onTertiaryFixed: Color(4279374336),
      tertiaryFixedDim: Color(4291611026),
      onTertiaryFixedVariant: Color(4281939982),
      surfaceDim: Color(4279898637),
      surfaceBright: Color(4282464050),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280753689),
      surfaceContainerHigh: Color(4281411619),
      surfaceContainerHighest: Color(4282200877),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294948491),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950037),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293575598),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966247),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291874198),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898637),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292593596),
      outlineVariant: Color(4292593596),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293976023),
      inversePrimary: Color(4282916352),
      primaryFixed: Color(4294959569),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950037),
      onPrimaryFixedVariant: Color(4280946176),
      secondaryFixed: Color(4294959569),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293575598),
      onSecondaryFixedVariant: Color(4280619269),
      tertiaryFixed: Color(4293782192),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291874198),
      onTertiaryFixedVariant: Color(4279768832),
      surfaceDim: Color(4279898637),
      surfaceBright: Color(4282464050),
      surfaceContainerLowest: Color(4279504136),
      surfaceContainerLow: Color(4280424981),
      surfaceContainer: Color(4280753689),
      surfaceContainerHigh: Color(4281411619),
      surfaceContainerHighest: Color(4282200877),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
