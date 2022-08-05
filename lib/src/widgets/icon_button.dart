import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/typography/text_styles.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

enum ButtonShape { circle, rectangle }

class ShapeIconButton extends StatelessWidget {
  ShapeIconButton(
      {Key? key,
      required this.onPressed,
      required this.icon,
      this.shape,
      this.disabled: false})
      : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final ButtonShape? shape;
  final bool disabled;

  ShapeBorder get buttonShape {
    switch (shape) {
      case ButtonShape.circle:
        return CircleBorder();
      case ButtonShape.rectangle:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
      default:
        return CircleBorder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
          color:
              disabled ? SystemColors.disable : Theme.of(context).primaryColor,
          shape: buttonShape),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        color: Theme.of(context).canvasColor,
        onPressed: disabled ? null : onPressed,
      ),
    );
  }
}

class ShapeIconButtonWithLabel extends StatelessWidget {
  ShapeIconButtonWithLabel(
      {Key? key,
      required this.onPressed,
      required this.icon,
      required this.label,
      this.shape,
      this.disabled: false})
      : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final String label;
  final ButtonShape? shape;
  final bool disabled;

  OutlinedBorder get buttonShape {
    switch (shape) {
      case ButtonShape.circle:
        return CircleBorder();
      case ButtonShape.rectangle:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
      default:
        return CircleBorder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        shape: buttonShape,
        padding: const EdgeInsets.all(16),
      ),
      child: Column(
        children: <Widget>[
          Icon(icon),
          Text(
            label,
          )
        ],
      ),
    );
  }
}
