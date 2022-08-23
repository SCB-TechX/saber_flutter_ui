# Accordion

Accordion implementing [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html).
To use, import `package:component_ui/component_ui.dart`

![Accordion](/img/docs/core-components/accordion/accordion.png)

## Accordion
- [`Dafalut`](accordion#dafalut)
- [`Flush`](accordion#flush)
- [`Subtitle`](accordion#subtitle)
- [`Trailing`](accordion#trailing)

### Dafalut

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

ใช้ `textArrow` เพื่อเพิ่มข้อความให้อยู่กับ arrow icon

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
import 'package:component_ui/component_ui.dart';

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
