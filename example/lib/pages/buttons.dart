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
          child: const Text(primaryButtonText),
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryButton(
          onPressed: () {},
          size: PrimaryButtonSize.small,
          child: const Text(primaryButtonText),
        ),
        const SizedBox(
          height: 8,
        ),
        PrimaryButton(
          onPressed: () {},
          size: PrimaryButtonSize.extraSmall,
          child: const Text(primaryButtonText),
        ),
      ],
    );
  }
}
