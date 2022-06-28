import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class TravelWalletTheme {
  static ThemeData get standard {
    return ThemeData(
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        primary: TravelWalletColors.black,
        shadowColor: Colors.blueAccent,
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        side: const BorderSide(color: TravelWalletColors.black, width: 1),
        padding: const EdgeInsets.symmetric(vertical: 16),
        primary: TravelWalletColors.black,
      ),
    );
  }

  static TextTheme get _textTheme {
    return TextTheme(
      headline1: TravelWalletTextStyle.headline1,
      headline2: TravelWalletTextStyle.headline2,
      headline3: TravelWalletTextStyle.headline3,
      headline4: TravelWalletTextStyle.headline4,
      headline5: TravelWalletTextStyle.headline5,
      headline6: TravelWalletTextStyle.headline6,
      subtitle1: TravelWalletTextStyle.subtitle1,
      subtitle2: TravelWalletTextStyle.subtitle2,
      bodyText1: TravelWalletTextStyle.bodyText1,
      bodyText2: TravelWalletTextStyle.bodyText2,
      caption: TravelWalletTextStyle.caption,
      overline: TravelWalletTextStyle.overline,
      button: TravelWalletTextStyle.button,
    );
  }
}
