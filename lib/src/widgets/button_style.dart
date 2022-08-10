import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

enum ButtonSize { small, normal, extraSmall }

TextStyle getTextStyle(ButtonSize size) {
  switch (size) {
    case ButtonSize.normal:
      return BaseTextStyle.button;
    case ButtonSize.small:
      return BaseTextStyle.button.copyWith(fontSize: 12);
    case ButtonSize.extraSmall:
      return BaseTextStyle.button.copyWith(fontSize: 11);
  }
}

EdgeInsets getPadding(ButtonSize size) {
  switch (size) {
    case ButtonSize.normal:
      return const EdgeInsets.symmetric(vertical: 10, horizontal: 32);
    case ButtonSize.small:
      return const EdgeInsets.symmetric(vertical: 8, horizontal: 24);
    case ButtonSize.extraSmall:
      return const EdgeInsets.symmetric(vertical: 6, horizontal: 16);
  }
}
