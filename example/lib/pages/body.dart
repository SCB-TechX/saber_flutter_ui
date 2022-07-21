import 'package:flutter/material.dart';

class BodyWidgets extends StatelessWidget {
  const BodyWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Body'),
        Text('Subtitle 1 / 16px Regular',
            style: Theme.of(context).textTheme.subtitle1),
        Text('Subtitle 2 / 14px Regular',
            style: Theme.of(context).textTheme.subtitle2),
        Text('Body 1 / 16px SemiBold',
            style: Theme.of(context).textTheme.bodyText1),
        Text('Body 2 / 14px SemiBold',
            style: Theme.of(context).textTheme.bodyText2),
        Text('Button / 14px SemiBold',
            style: Theme.of(context).textTheme.button),
        Text('Caption / 12px SemiBold',
            style: Theme.of(context).textTheme.caption),
        Text('Overline', style: Theme.of(context).textTheme.overline),
      ],
    );
  }
}
