import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
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
    return OutlinedButton(
        onPressed: disabled ? null : onPressed,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          side: BorderSide(
              width: 1,
              color: disabled
                  ? SystemColors.disable
                  : Theme.of(context).primaryColor),
          minimumSize: Size.zero,
          padding: buttonPadding(size),
        ),
        child: Text(
          label,
          style: buttonSize(size),
        ));
  }
}

class SecondaryButtonWithIcon extends StatelessWidget {
  const SecondaryButtonWithIcon(
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
    return OutlinedButton.icon(
      onPressed: disabled ? null : onPressed,
      icon: Icon(
        icon,
        size: 16.0,
      ),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        side: BorderSide(
            width: 1,
            color: disabled
                ? SystemColors.disable
                : Theme.of(context).primaryColor),
        minimumSize: Size.zero,
        padding: buttonPadding(size),
      ),
      label: Text(
        label,
        style: buttonSize(size),
      ),
    );
  }
}
