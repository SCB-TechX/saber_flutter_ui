import 'package:flutter/material.dart';

import '../../travel_wallet_ui.dart';

class BaseTextStyle {
  static const _baseHeaderStyle = TextStyle(
    package: 'travelwallet_ui',
    fontFamily: Fonts.dmSans,
    fontWeight: BaseFontWeight.bold,
    color: SystemColors.black,
  );

  static const _baseTextStyle = TextStyle(
    package: 'travelwallet_ui',
    fontFamily: Fonts.poppins,
    fontWeight: BaseFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseHeaderStyle.copyWith(
      fontSize: 96,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseHeaderStyle.copyWith(
      fontSize: 60,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseHeaderStyle.copyWith(
      fontSize: 48,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseHeaderStyle.copyWith(
      fontSize: 34,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseHeaderStyle.copyWith(
      fontSize: 24,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseHeaderStyle.copyWith(
      fontSize: 20,
      fontWeight: BaseFontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BaseFontWeight.semiBold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: BaseFontWeight.regular,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BaseFontWeight.regular,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: BaseFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      fontWeight: BaseFontWeight.semiBold,
    );
  }

  /// Caption Text Style
  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: BaseFontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 10,
      fontWeight: BaseFontWeight.regular,
    );
  }
}
