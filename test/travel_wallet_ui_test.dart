import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  group('TravelWallet themeData', () {
    test('is defined for standard', () {
      expect(ThemeColor.blacktheme, isA<ThemeData>());
    });
  });
}
