import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/colors.dart';

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
            color: TravelWalletColors.hyperlink,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
