import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/typography/text_styles.dart';

enum SecondaryButtonSize { small, normal, extraSmall }

class SecondaryButton extends StatelessWidget {
  SecondaryButton(
      {Key? key, required this.onPressed, required this.label, this.size})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final SecondaryButtonSize? size;

  final TextStyle normalTextStyle = BaseTextStyle.button;
  final TextStyle smallTextStyle = BaseTextStyle.button.copyWith(fontSize: 12);
  final TextStyle extraSmallTextStyle =
      BaseTextStyle.button.copyWith(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        ),
        child: Text(label));
  }
}

class SecondaryButtonWithIcon extends StatelessWidget {
  SecondaryButtonWithIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon,
      this.size})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final SecondaryButtonSize? size;

  final TextStyle normalTextStyle = BaseTextStyle.button;
  final TextStyle smallTextStyle = BaseTextStyle.button.copyWith(fontSize: 12);
  final TextStyle extraSmallTextStyle =
      BaseTextStyle.button.copyWith(fontSize: 11);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 16.0,
      ),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        side: BorderSide(width: 1, color: Theme.of(context).primaryColor),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
      ),
      label: Text(label),
    );
  }
}
