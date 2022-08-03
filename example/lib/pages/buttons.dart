import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

const primaryButtonText = 'Primary Button';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Buttons'),
        PrimaryButton(
          onPressed: () {},
          label: primaryButtonText,
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryButton(
          onPressed: () {},
          size: PrimaryButtonSize.small,
          label: primaryButtonText,
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryButton(
          onPressed: () {},
          size: PrimaryButtonSize.extraSmall,
          label: primaryButtonText,
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryButtonWithIcon(
          onPressed: () {},
          label: primaryButtonText,
          icon: Icons.add,
        ),
        const SizedBox(
          height: 8,
        ),
        SecondaryButton(
          onPressed: () {},
          label: 'ButtonText',
        ),
        const SizedBox(
          height: 8,
        ),
        SecondaryButtonWithIcon(
          onPressed: () {},
          label: 'ButtonText',
          icon: Icons.add,
        ),
      ],
    );
  }
}
