import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

class Hyperlink extends StatelessWidget {
  const Hyperlink({Key? key, required this.label, required this.onTap})
      : super(key: key);

  final VoidCallback? onTap;
  final String label;

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
