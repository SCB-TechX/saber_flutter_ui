# Cards
Cards are like containers, contain content and actions about a single subject. For example an album, product card, contact details, etc.

You can use [Card class](https://api.flutter.dev/flutter/material/Card-class.html) of Material and custom layout as many as you want.

We will show an example of using `Elevation` and `Shape` that card class provides.

![Card example](/img/docs/core-components/card/card.png)


## Elevation & Shape
By default elevation is 1dp and slightly rounded corners.  
If you needs to remove elevation card, you can set `elevation : 0` or use `shadowColor : Colors.transparent`.



![Card example](/img/docs/core-components/card/card-elevation.png)

```dart
Card(
    elevation: 0,
    child: ........
)
```

This sample show change rounded corners to 16px. You can custom shape of card by set shape with [shapeBorder](https://api.flutter.dev/flutter/painting/ShapeBorder-class.html)

![Card example](/img/docs/core-components/card/example-card-1.png)

```dart
Card(
  elevation: 2,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              const CircleAvatar(
                child: Text('A'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Header',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Subhead',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.navigate_next,
          ),
        )
      ],
    ),
  ),
)
```

![Card example](/img/docs/core-components/card/example-card-2.png)

```dart
Card(
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
  child:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              const CircleAvatar(
                child: Text('A'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Header',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Subhead',
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          color: Theme.of(context).primaryColorLight,
          padding: const EdgeInsets.all(80),
        ),
        const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                'Lorem ipsum .....',
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 3)),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: const Text('Enabled')),
            const SizedBox(width: 8),
            PrimaryButton(onPressed: () {}, label: 'Enabled'),
          ],
        ),
      )
    ]
  ),
)
```

## Example

```dart
import 'package:component_ui/component_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Card Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Column(
            children: [
              Card(
                child: ........
              ),
            ]
          )
        ),
      ),
    );
  }
}
```
