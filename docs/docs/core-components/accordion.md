# [WIP] Accordion

Accordion implementing [ExpansionTile](https://api.flutter.dev/flutter/material/ExpansionTile-class.html).  
To use, import `package:component_ui/component_ui.dart`


## Example

![Accordion](/img/Accordion.png)

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
        body: const Accordion(
            title: Text('Accordion Title'),
            expandedContent: [Text('Lorem')]
        ),
      ),
    );
  }
}
```

## Flush

Add `effect: false` to remove the default background color, some borders, some rounded corners, and effect.

![Accordion flush](/img/Accordion-flush.png)

```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    effect: false
)
```

## Trailing
The expansion arrow icon is shown on the right by default. This can be changed using `trailing`.

![Accordion trailing](/img/Accordion-trailing.png)
```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    trailing: Icon(Icons.favorite),
)
```

ใช้ `textArrow` เพื่อเพิ่มข้อความให้อยู่กับ arrow icon

![Accordion text with arrow](/img/Accordion-textArrow.png)
```dart
Accordion(
    title: Text('Accordion Title'),
    expandedContent: [Text('Lorem')],
    textArrow: 'Label',
)
```

## Subtitle

![Accordion subtitle](/img/Accordion-subtitle.png)
```dart
Accordion(
    title: Text('Accordion Title'),
    subtitle: Text('Label'),
    expandedContent: [Text('Lorem')],
)
```


