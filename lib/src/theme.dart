import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class TravelWalletTheme {
  static ThemeData get themeData {
    return ThemeData(
        // primarySwatch: Colors.cyan,
        // primaryColor: TravelWalletColors.black,
        // elevatedButtonTheme: _elevatedButtonTheme,
        // outlinedButtonTheme: _outlinedButtonTheme,
        // textButtonTheme: _textButtonTheme,
        // textTheme: _textTheme,
        // inputDecorationTheme: const InputDecorationTheme(
        //   // enabledBorder: UnderlineInputBorder`(
        //   //   borderSide: BorderSide(color: Colors.black),
        //   // ),
        //   // focusedBorder: UnderlineInputBorder(
        //   //   borderSide: BorderSide(color: Colors.black),
        //   // ),
        //   border: UnderlineInputBorder(
        //     borderSide: BorderSide(color: Colors.black),
        //   ),
        //   labelStyle: TextStyle(color: Colors.black),
        // ),
        // textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        // toggleableActiveColor: TravelWalletColors.black,
        // switchTheme: _switchTheme,
        // appBarTheme: const AppBarTheme(
        //     backgroundColor: Colors.white, foregroundColor: Colors.black),
        );
  }

  // static ElevatedButtonThemeData get _elevatedButtonTheme {
  //   return ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(16)),
  //       ),
  //       primary: TravelWalletColors.black,
  //     ),
  //   );
  // }

  // static OutlinedButtonThemeData get _outlinedButtonTheme {
  //   return OutlinedButtonThemeData(
  //     style: OutlinedButton.styleFrom(
  //       shape: const RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(Radius.circular(16)),
  //       ),
  //       side: const BorderSide(color: TravelWalletColors.black, width: 1),
  //       primary: TravelWalletColors.black,
  //     ),
  //   );
  // }

  // static TextButtonThemeData get _textButtonTheme {
  //   return TextButtonThemeData(
  //     style: TextButton.styleFrom(
  //       primary: TravelWalletColors.black,
  //     ),
  //   );
  // }

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

  // static SwitchThemeData get _switchTheme {
  //   return SwitchThemeData(
  //     thumbColor: MaterialStateProperty.all<Color>(TravelWalletColors.black),
  //     trackColor:
  //         MaterialStateProperty.all(TravelWalletColors.black.withOpacity(.3)),
  //   );
  // }
}
