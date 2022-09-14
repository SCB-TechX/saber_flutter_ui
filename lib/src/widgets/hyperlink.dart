import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class HyperLink extends StatelessWidget {
  const HyperLink(this.label,
      {Key? key, required this.onTap, this.color, this.decoration})
      : super(key: key);

  final VoidCallback? onTap;
  final String label;
  final Color? color;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: const TextStyle(
            color: SystemColors.hyperlink,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
