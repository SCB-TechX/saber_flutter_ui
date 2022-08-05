import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/src/colors.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class Accordion extends StatelessWidget {
  const Accordion({
    Key? key,
    this.trailing,
    required this.title,
    this.subtitle,
    required this.expandedContent,
    this.effect = true,
    this.textArrow,
  }) : super(key: key);

  final Widget? trailing;
  final Widget title;
  final Widget? subtitle;
  final List<Widget> expandedContent;
  final bool effect;
  final String? textArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: effect
          ? BoxDecoration(
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.05),
                  offset: Offset(0, 0),
                  blurRadius: 20,
                  spreadRadius: 5,
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            )
          : null,
      child: Theme(
        data: ThemeData(
          primarySwatch: Palette.BlackThemeShades,
        ).copyWith(dividerColor: effect ? Colors.transparent : null),
        child: ExpansionTile(
          trailing: textArrow == null
              ? trailing
              : Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: textArrow),
                      const WidgetSpan(
                        child: Icon(
                          Icons.expand_more,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
          title: title,
          subtitle: subtitle,
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5))),
                child: ListTile(title: Column(children: expandedContent))),
          ],
        ),
      ),
    );
  }
}
