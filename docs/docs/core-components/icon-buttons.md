# 🔥 [WIP] IconButtons

![icon buttons overview](/img/docs/core-components/icon-buttons/icon-buttons-overview.png)

## IconButtons

- [`ShapeIconButton`](#shapeiconbutton)
- [`ShapeIconButtonWithLabel`](#shapeiconbuttonwithlabel)

![icon buttons overview](/img/docs/core-components/icon-buttons/icon-buttons-overview.png)

```dart
ShapeIconButton(
  onPressed: () {},
  icon: Icons.add,
)
```

### ShapeIconButton

![icon buttons default](/img/docs/core-components/icon-buttons/icon-buttons-default.png)

```dart
ShapeIconButton(
  onPressed: () {},
  icon: Icons.add,
  shape: ButtonShape.circle,
  disabled: true,
)
```

```dart
ShapeIconButton(
  onPressed: () {},
  icon: Icons.add,
  shape: ButtonShape.rectangle,
)
```

### ShapeIconButtonWithLabel

![icon buttons with label](/img/docs/core-components/icon-buttons/icon-buttons-with-label.png)

```dart
ShapeIconButtonWithLabel(
  onPressed: () {},
  label: 'disabled',
  icon: Icons.add,
  shape: ButtonShape.circle,
  disabled: true,
)
```

```dart
ShapeIconButtonWithLabel(
  onPressed: () {},
  label: 'label',
  icon: Icons.add,
  shape: ButtonShape.rectangle,
)
```

## Examples

```dart
import 'package:component_ui/component_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'IconButtons Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Center(
          child: ShapeIconButton(
            onPressed: () {},
            icon: Icons.add,
            shape: ButtonShape.rectangle,
          ),
        )
      ),
    );
  }
}
```
