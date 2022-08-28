import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

enum ButtonShape { circle, rectangle }

class ShapeIconButton extends StatelessWidget {
  const ShapeIconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.shape,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final ButtonShape? shape;

  ShapeBorder get buttonShape {
    switch (shape) {
      case ButtonShape.circle:
        return const CircleBorder();
      case ButtonShape.rectangle:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
      default:
        return const CircleBorder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
          color: onPressed != null
              ? Theme.of(context).primaryColor
              : SystemColors.disable,
          shape: buttonShape),
      child: IconButton(
        icon: Icon(
          icon,
        ),
        color: Theme.of(context).canvasColor,
        onPressed: onPressed,
      ),
    );
  }
}

class ShapeIconButtonWithLabel extends StatelessWidget {
  const ShapeIconButtonWithLabel({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.shape,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final String label;
  final ButtonShape? shape;

  OutlinedBorder get buttonShape {
    switch (shape) {
      case ButtonShape.circle:
        return const CircleBorder();
      case ButtonShape.rectangle:
        return RoundedRectangleBorder(borderRadius: BorderRadius.circular(16));
      default:
        return const CircleBorder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
