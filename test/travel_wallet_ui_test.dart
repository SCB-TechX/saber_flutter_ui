import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  group('TravelWallet themeData', () {
    test(
        'is defined for blackTheme, blueTheme, greenTheme, yellowTheme, purpleTheme, redTheme, blackAndBlueTheme',
        () {
      expect(ThemeColor.blackTheme, isA<ThemeData>());
      expect(ThemeColor.blueTheme, isA<ThemeData>());
      expect(ThemeColor.greenTheme, isA<ThemeData>());
      expect(ThemeColor.yellowTheme, isA<ThemeData>());
      expect(ThemeColor.purpleTheme, isA<ThemeData>());
      expect(ThemeColor.redTheme, isA<ThemeData>());
      expect(ThemeColor.blackAndBlueTheme, isA<ThemeData>());
    });
  });
}
