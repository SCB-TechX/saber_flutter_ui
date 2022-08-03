import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/typography/text_styles.dart';

enum PrimaryButtonSize { small, normal, extraSmall }

class PrimaryButton extends StatelessWidget {
  PrimaryButton(
      {Key? key, required this.onPressed, required this.label, this.size})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final PrimaryButtonSize? size;

  final TextStyle normalTextStyle = BaseTextStyle.button;
  final TextStyle smallTextStyle = BaseTextStyle.button.copyWith(fontSize: 12);
  final TextStyle extraSmallTextStyle =
      BaseTextStyle.button.copyWith(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      ),
      child: Text(label),
    );
  }
}

class PrimaryButtonWithIcon extends StatelessWidget {
  PrimaryButtonWithIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon,
      this.size})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final PrimaryButtonSize? size;

  final TextStyle normalTextStyle = BaseTextStyle.button;
  final TextStyle smallTextStyle = BaseTextStyle.button.copyWith(fontSize: 12);
  final TextStyle extraSmallTextStyle =
      BaseTextStyle.button.copyWith(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 16.0,
      ),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      ),
      label: Text(label),
    );
  }
}
