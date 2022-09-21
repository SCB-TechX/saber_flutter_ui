import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class ThemeColor {
  static ThemeData blackTheme = ThemeData(
    primarySwatch: Palette.blackThemeShades,
    textTheme: _textTheme,
  );

  static ThemeData blueTheme =
      ThemeData(primarySwatch: Palette.blueThemeShades, textTheme: _textTheme);

  static ThemeData greenTheme =
      ThemeData(primarySwatch: Palette.greenThemeShades, textTheme: _textTheme);

  static ThemeData yellowTheme = ThemeData(
      primarySwatch: Palette.yellowThemeShades, textTheme: _textTheme);

  static ThemeData purpleTheme = ThemeData(
      primarySwatch: Palette.purpleThemeShades, textTheme: _textTheme);

  static ThemeData redTheme =
      ThemeData(primarySwatch: Palette.redThemeShades, textTheme: _textTheme);

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
