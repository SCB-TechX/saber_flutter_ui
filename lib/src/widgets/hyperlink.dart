import 'package:flutter/material.dart';

class HyperLink extends StatelessWidget {
  const HyperLink(this.data, {Key? key, required this.onTap}) : super(key: key);

  final VoidCallback onTap;
  final String data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        data,
        style: const TextStyle(
            // color: SystemColors.hyperlink,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
