import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/typography/text_styles.dart';

enum ButtonSize { small, normal, extraSmall }

TextStyle buttonSize(ButtonSize size) {
  switch (size) {
    case ButtonSize.normal:
      return BaseTextStyle.button;
    case ButtonSize.small:
      return BaseTextStyle.button.copyWith(fontSize: 12);
    case ButtonSize.extraSmall:
      return BaseTextStyle.button.copyWith(fontSize: 11);
    default:
      return BaseTextStyle.button;
  }
}

EdgeInsets buttonPadding(ButtonSize size) {
  switch (size) {
    case ButtonSize.normal:
      return const EdgeInsets.symmetric(vertical: 10, horizontal: 32);
    case ButtonSize.small:
      return const EdgeInsets.symmetric(vertical: 8, horizontal: 24);
    case ButtonSize.extraSmall:
      return const EdgeInsets.symmetric(vertical: 6, horizontal: 16);
    default:
      return const EdgeInsets.symmetric(vertical: 8, horizontal: 32);
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.size = ButtonSize.normal,
      this.disabled = false})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final ButtonSize size;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        minimumSize: Size.zero,
        padding: buttonPadding(size),
      ),
      child: Text(
        label,
        style: buttonSize(size),
      ),
    );
  }
}

class PrimaryButtonWithIcon extends StatelessWidget {
  const PrimaryButtonWithIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon,
      this.size = ButtonSize.normal,
      this.disabled = false})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final ButtonSize size;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: disabled ? null : onPressed,
      icon: Icon(
        icon,
        size: 16.0,
      ),
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          minimumSize: Size.zero,
          padding: buttonPadding(size)),
      label: Text(
        label,
        style: buttonSize(size),
      ),
    );
  }
}
