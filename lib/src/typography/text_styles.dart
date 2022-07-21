import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/colors.dart';
import 'package:travel_wallet_ui/src/typography/fonts.dart';

import 'font_weights.dart';

class TravelWalletTextStyle {
  static const _baseHeaderStyle = TextStyle(
    package: 'travelwallet_ui',
    fontFamily: Fonts.dmSans,
    color: TravelWalletColors.black,
    fontWeight: TravelWalletFontWeight.regular,
  );

  static const _baseTextStyle = TextStyle(
    package: 'travelwallet_ui',
    fontFamily: Fonts.poppins,
    color: TravelWalletColors.black,
    fontWeight: TravelWalletFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseHeaderStyle.copyWith(
      fontSize: 96,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseHeaderStyle.copyWith(
      fontSize: 60,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseHeaderStyle.copyWith(
      fontSize: 48,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseHeaderStyle.copyWith(
      fontSize: 34,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseHeaderStyle.copyWith(
      fontSize: 24,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseHeaderStyle.copyWith(
      fontSize: 20,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: TravelWalletFontWeight.semiBold,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: TravelWalletFontWeight.semiBold,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: TravelWalletFontWeight.semiBold,
    );
  }

  /// Caption Text Style
  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: TravelWalletFontWeight.semiBold,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 10,
      fontWeight: TravelWalletFontWeight.regular,
    );
  }
}
