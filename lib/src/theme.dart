import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class ThemeColor {
  static ThemeData blacktheme =
      ThemeData(primarySwatch: Palette.BlackThemeShades, textTheme: _textTheme);

  static ThemeData bluetheme =
      ThemeData(primarySwatch: Palette.BlueThemeShades, textTheme: _textTheme);

  static ThemeData greentheme =
      ThemeData(primarySwatch: Palette.GreenThemeShades, textTheme: _textTheme);

  static ThemeData yellowtheme = ThemeData(
      primarySwatch: Palette.YellowThemeShades, textTheme: _textTheme);

  static ThemeData purpletheme = ThemeData(
      primarySwatch: Palette.PurpleThemeShades, textTheme: _textTheme);

  static ThemeData redtheme =
      ThemeData(primarySwatch: Palette.RedThemeShades, textTheme: _textTheme);

  static ThemeData blackandbluetheme = ThemeData(
    textTheme: _textTheme,
    appBarTheme: const AppBarTheme(
      elevation: 1,
    ),
    secondaryHeaderColor: const Color(0xFF03DAC6),
    colorScheme: ColorScheme(
      primary: Palette.BlackThemeShades,
      primaryContainer: Palette.BlackThemeShades[900],
      secondary: const Color(0xFF16C8F7),
      secondaryContainer: const Color(0xFF0097C4),
      background: Colors.white,
      surface: Colors.white,
      onBackground: Colors.black,
      error: const Color(0xFFB00020),
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      brightness: Brightness.light,
    ),
  );

  static TextTheme get _textTheme {
    return TextTheme(
      headline1: BaseTextStyle.headline1,
      headline2: BaseTextStyle.headline2,
      headline3: BaseTextStyle.headline3,
      headline4: BaseTextStyle.headline4,
      headline5: BaseTextStyle.headline5,
      headline6: BaseTextStyle.headline6,
      subtitle1: BaseTextStyle.subtitle1,
      subtitle2: BaseTextStyle.subtitle2,
      bodyText1: BaseTextStyle.bodyText1,
      bodyText2: BaseTextStyle.bodyText2,
      caption: BaseTextStyle.caption,
      overline: BaseTextStyle.overline,
      button: BaseTextStyle.button,
    );
  }
}
