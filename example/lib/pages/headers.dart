import 'package:flutter/material.dart';

class HeaderWidgets extends StatelessWidget {
  const HeaderWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Headers'),
        Text('H1 Head / 96px Bold',
            style: Theme.of(context).textTheme.headline1),
        Text('H2 Headline / 60px Bold',
            style: Theme.of(context).textTheme.headline2),
        Text('H3 Headline / 48px Bold',
            style: Theme.of(context).textTheme.headline3),
        Text('H4 Headline / 34px Bold',
            style: Theme.of(context).textTheme.headline4),
        Text('H5 Headline / 24px Bold',
            style: Theme.of(context).textTheme.headline5),
        Text('H6 Headline / 20px Bold',
            style: Theme.of(context).textTheme.headline6),
      ],
    );
  }
}
