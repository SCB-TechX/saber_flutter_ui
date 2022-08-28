import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() {
  group('Saber UI themeData', () {
    test(
        'is defined for blackTheme, blueTheme, greenTheme, yellowTheme, purpleTheme, redTheme',
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
