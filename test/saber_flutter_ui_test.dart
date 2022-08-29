import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() {
<<<<<<< HEAD:test/travel_wallet_ui_test.dart
  group('TravelWallet ThemeColor', () {
=======
  group('Saber UI themeData', () {
>>>>>>> feature/docs:test/saber_flutter_ui_test.dart
    test(
        'is defined for blackTheme, blueTheme, greenTheme, yellowTheme, purpleTheme, redTheme',
        () {
      expect(ThemeColor.blackTheme, isA<ThemeData>());
      expect(ThemeColor.blueTheme, isA<ThemeData>());
      expect(ThemeColor.greenTheme, isA<ThemeData>());
      expect(ThemeColor.yellowTheme, isA<ThemeData>());
      expect(ThemeColor.purpleTheme, isA<ThemeData>());
      expect(ThemeColor.redTheme, isA<ThemeData>());
    });
  });
}
