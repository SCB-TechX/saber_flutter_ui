import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/colors.dart';
import 'package:travel_wallet_ui/src/typography/text_styles.dart';

enum PrimaryButtonSize { small, normal, extraSmall }

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.child,
      this.size = PrimaryButtonSize.normal})
      : super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final PrimaryButtonSize size;

  final TextStyle normalTextStyle = TravelWalletTextStyle.button;
  final TextStyle smallTextStyle =
      TravelWalletTextStyle.button.copyWith(fontSize: 12);
  final TextStyle extraSmallTextStyle =
      TravelWalletTextStyle.button.copyWith(fontSize: 12);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        primary: TravelWalletColors.black,
      ),
      child: child,
    );
  }
}
