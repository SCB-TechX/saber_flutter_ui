import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  group('button text styles', () {
    test('returns normal text style', () {
      final style = BaseTextStyle.button;
      expect(getTextStyle(ButtonSize.normal), style);
    });

    test('returns small text style', () {
      final style = BaseTextStyle.button.copyWith(fontSize: 12);
      expect(getTextStyle(ButtonSize.small), style);
    });

    test('returns extra small text style', () {
      final style = BaseTextStyle.button.copyWith(fontSize: 11);
      expect(getTextStyle(ButtonSize.extraSmall), style);
    });
  });

  group('button paddings', () {
    test('returns normal padding', () {
      const padding = EdgeInsets.symmetric(vertical: 10, horizontal: 32);
      expect(getPadding(ButtonSize.normal), padding);
    });

    test('returns small padding', () {
      const padding = EdgeInsets.symmetric(vertical: 8, horizontal: 24);
      expect(getPadding(ButtonSize.small), padding);
    });

    test('returns extra small padding', () {
      const padding = EdgeInsets.symmetric(vertical: 6, horizontal: 16);
      expect(getPadding(ButtonSize.extraSmall), padding);
    });
  });
}
