# Accordion

Accordion is implemented using [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html).

![Accordion](/img/docs/core-components/accordion/accordion.png)

## Accordion

- [`Default`](/docs/core-components/accordion#default)
- [`Flush`](/docs/core-components/accordion#flush)
- [`Subtitle`](/docs/core-components/accordion#subtitle)
- [`Trailing`](/docs/core-components/accordion#trailing)

### Default

![Accordion](/img/docs/core-components/accordion/accordion-example.png)

```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
)
```

### Flush

Add `effect: false` to remove the default background color, some borders, some rounded corners, and effect.

![Accordion flush](/img/docs/core-components/accordion/accordion-flush.png)

```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    effect: false
)
```

### Subtitle

![Accordion subtitle](/img/docs/core-components/accordion/accordion-subtitle.png)
```dart
Accordion(
    title: Text('Accordion Title'),
    subtitle: Text('Label'),
    expandedContent: [Text('Lorem')],
)
```

### Trailing
The expansion arrow icon is shown on the right by default. This can be changed using `trailing`.

![Accordion trailing](/img/docs/core-components/accordion/accordion-trailing.png)

```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    trailing: Icon(Icons.favorite),
)
```

Use `textArrow` for add text with arrow icon.

![Accordion text with arrow](/img/docs/core-components/accordion/accordion-textArrow.png)
```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    textArrow: 'Label',
)
```

## Example

```dart
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Accordion Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: Accordion(
            title: Text('Accordion Title'),
            expandedContent: [Text('Lorem'),]
          )
        ),
      ),
    );
  }
}
```
