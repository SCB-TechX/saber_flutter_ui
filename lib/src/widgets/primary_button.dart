import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

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
        padding: getPadding(size),
      ),
      child: Text(
        label,
        style: getTextStyle(size),
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
          padding: getPadding(size)),
      label: Text(
        label,
        style: getTextStyle(size),
      ),
    );
  }
}
