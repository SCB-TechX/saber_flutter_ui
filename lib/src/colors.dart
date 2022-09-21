import 'package:flutter/material.dart';

class SystemColors {
  /// Black
  static const Color black = Color(0xFF000000);

  /// White
  static const Color white = Color(0xFFFFFFFF);

  /// Hyperlink
  static const Color hyperlink = Palette.infoShades;

  /// Info
  static const Color info = Palette.infoShades;

  /// Info dark
  static Color infoDark = Palette.infoShades[400]!;

  /// Info light
  static Color infoLight = Palette.infoShades[100]!;

  /// Error
  static const Color error = Palette.errorShades;

  /// Error dark
  static Color errorDark = Palette.errorShades[400]!;

  /// Error light
  static Color errorLight = Palette.errorShades[100]!;

  /// Success
  static const Color success = Palette.successShades;

  /// Success dark
  static Color successDark = Palette.successShades[400]!;

  /// Success light
  static Color successLight = Palette.successShades[100]!;

  /// Warning
  static const Color warning = Palette.waringShades;

  /// Warning dark
  static Color warningDark = Palette.waringShades[400]!;

  /// Warning light
  static Color warningLight = Palette.waringShades[100]!;

  /// Disable
  static const Color disable = Palette.disableShades;

  /// Disable dark
  static Color disableDark = Palette.disableShades[400]!;

  /// Disable light
  static Color disableLight = Palette.disableShades[100]!;
}

class Palette {
  /// Black
  static const MaterialColor blackThemeShades = MaterialColor(
    0xff333132, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFDEDEDE), //10%
      100: Color(0xFFC6C6C6), //20%
      200: Color(0xFFB0AFAF), //30%
      300: Color(0xFF989797), //40%
      400: Color(0xFF807E7F), //50%
      500: Color(0xFF696768), //60%
      600: Color(0xFF525051), //70%
      700: Color(0xFF3B3839), //80%
      800: Color(0xFF242122), //90%
      900: Color(0xFF0C090A), //100%
    },
  );

  /// Blue
  static const MaterialColor blueThemeShades = MaterialColor(
    0xFF008BFF, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE6EFFA), //10%
      100: Color(0xFFCCDFF5), //20%
      200: Color(0xFFB3CFF0), //30%
      300: Color(0xFF99BFEA), //40%
      400: Color(0xFF7FAEE4), //50%
      500: Color(0xFF669FE0), //60%
      600: Color(0xFF4D8FDB), //70%
      700: Color(0xFF337FD5), //80%
      800: Color(0xFF1A6FD1), //90%
      900: Color(0xFF005FCB), //100%
    },
  );

  /// Green
  static const MaterialColor greenThemeShades = MaterialColor(
    0xFF3F7000, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFE8EDE6), //10%
      100: Color(0xFFCFDACC), //20%
      200: Color(0xFFB8C7B3), //30%
      300: Color(0xFFA0B499), //40%
      400: Color(0xFF87A17F), //50%
      500: Color(0xFF708F66), //60%
      600: Color(0xFF597D4D), //70%
      700: Color(0xFF416933), //80%
      800: Color(0xFF29571A), //90%
      900: Color(0xFF114400), //100%
    },
  );

  /// Yellow
  static const MaterialColor yellowThemeShades = MaterialColor(
    0xFFF9BD38, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFFEF2D7), //10%
      100: Color(0xFFFEECC4), //20%
      200: Color(0xFFFEECC4), //30%
      300: Color(0xFFFBD788), //40%
      400: Color(0xFFFBD174), //50%
      500: Color(0xFFFAC44C), //60%
      600: Color(0xFFF9BD38), //70%
      700: Color(0xFFE1AA33), //80%
      800: Color(0xFFC7972D), //90%
      900: Color(0xFFAF8527), //100%
    },
  );

  /// Purple
  static const MaterialColor purpleThemeShades = MaterialColor(
    0xFF9373F9, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFEFEDFA), //10%
      100: Color(0xFFDFDAF3), //20%
      200: Color(0xFFCFC8EE), //30%
      300: Color(0xFFBFB5E8), //40%
      400: Color(0xFFAEA2E1), //50%
      500: Color(0xFF9F90DC), //60%
      600: Color(0xFF8F7ED7), //70%
      700: Color(0xFF7F6BD1), //80%
      800: Color(0xFF6F59CB), //90%
      900: Color(0xFF5F46C5), //100%
    },
  );

  /// Red
  static const MaterialColor redThemeShades = MaterialColor(
    0xFFFF6D5E, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFFFAECEB), //10%
      100: Color(0xFFF4D8D6), //20%
      200: Color(0xFFEEC5C3), //30%
      300: Color(0xFFE8B1AE), //40%
      400: Color(0xFFE29C99), //50%
      500: Color(0xFFDD8985), //60%
      600: Color(0xFFD87671), //70%
      700: Color(0xFFD1625D), //80%
      800: Color(0xFFCC4F49), //90%
      900: Color(0xFFC63B34), //100%
    },
  );

  /// Error
  static const MaterialColor errorShades = MaterialColor(
    0xFFA53328, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0xFFFFE4E4), //10%
      200: Color(0xFFDE7777), //20%
      300: Color(0xFFA53328), //30%
      400: Color(0xFF700000), //40%
      500: Color(0xFF480000), //50%
    },
  );

  /// Waring
  static const MaterialColor waringShades = MaterialColor(
    0xFFFFB72C, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0xFFFFE9BE), //10%
      200: Color(0xFFFFD178), //20%
      300: Color(0xFFFFB72C), //30%
      400: Color(0xFFC78700), //40%
      500: Color(0xFF805600), //50%
    },
  );

  /// Success
  static const MaterialColor successShades = MaterialColor(
    0xFF7BC11F, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0xFFE0EDCD), //10%
      200: Color(0xFFB0E072), //20%
      300: Color(0xFF7BC11F), //30%
      400: Color(0xFF3F7000), //40%
      500: Color(0xFF203900), //50%
    },
  );

  /// Info
  static const MaterialColor infoShades = MaterialColor(
    0xFF1678A9, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0xFFC7E8FF), //10%
      200: Color(0xFF59A7DB), //20%
      300: Color(0xFF1678A9), //30%
      400: Color(0xFF004C7A), //40%
      500: Color(0xFF00314F), //50%
    },
  );

  /// Disable
  static const MaterialColor disableShades = MaterialColor(
    0xFFC4C4C4, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      100: Color(0xFFF2F2F2), //10%
      200: Color(0xFFE1E1E1), //20%
      300: Color(0xFFC4C4C4), //30%
      400: Color(0xFF888B8C), //40%
      500: Color(0xFF515151), //50%
    },
  );
}
