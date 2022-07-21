import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({Key? key, required this.onPressed, required this.child})
      : super(key: key);

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
