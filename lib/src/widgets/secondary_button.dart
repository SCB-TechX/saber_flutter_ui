import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.size = ButtonSize.normal,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final ButtonSize size;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          side: BorderSide(
              width: 1,
              color: onPressed != null
                  ? Theme.of(context).primaryColor
                  : SystemColors.disable),
          minimumSize: Size.zero,
          padding: getPadding(size),
        ),
        child: Text(
          label,
          style: getTextStyle(size),
        ));
  }
}

class SecondaryButtonWithIcon extends StatelessWidget {
  const SecondaryButtonWithIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon,
      this.size = ButtonSize.normal})
      : super(key: key);

  final VoidCallback? onPressed;
  final String label;
  final IconData icon;
  final ButtonSize size;

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
        side: BorderSide(
            width: 1,
            color: onPressed != null
                ? Theme.of(context).primaryColor
                : SystemColors.disable),
        minimumSize: Size.zero,
        padding: getPadding(size),
      ),
      label: Text(
        label,
        style: getTextStyle(size),
      ),
    );
  }
}
