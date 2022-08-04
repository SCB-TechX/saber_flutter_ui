import 'package:flutter/material.dart';

class LinkButtonWith extends StatelessWidget {
  const LinkButtonWith({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

class LinkButtonWithIcon extends StatelessWidget {
  const LinkButtonWithIcon(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.icon})
      : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 16.0,
      ),
      label: Text(label),
    );
  }
}
