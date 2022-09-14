# IconButtons
ShapeiconButton developed from an [IconButton](https://api.flutter.dev/flutter/material/IconButton-class.html) and increased the button's background; the two shapes that could change were a circle and a rectangle.

![icon buttons overview](/img/docs/core-components/buttons/icon-buttons/icon-buttons-overview.png)

## IconButtons

- [`ShapeIconButton`](#shapeiconbutton)
- [`ShapeIconButtonWithLabel`](#shapeiconbuttonwithlabel)

![icon buttons overview](/img/docs/core-components/buttons/icon-buttons/icon-buttons-overview.png)

```dart
ShapeIconButton(
  onPressed: () {},
  icon: Icons.add,
)
```

### ShapeIconButton

![icon buttons default](/img/docs/core-components/buttons/icon-buttons/icon-buttons-default.png)

```dart
ShapeIconButton(
  onPressed: () {},
  icon: Icons.add,
  shape: ButtonShape.rectangle,
)
```

### ShapeIconButtonWithLabel

![icon buttons with label](/img/docs/core-components/buttons/icon-buttons/icon-buttons-with-label.png)

```dart
ShapeIconButtonWithLabel(
  onPressed: () {},
  label: 'Add',
  icon: Icons.add,
  shape: ButtonShape.rectangle,
)
```

### Button Shapes

You can change a button size by pass the `shape` parameter to the widget

- `circle` (default)
- `rectangle`

## Examples

- [ShapeIconButton Example](#shapeiconbutton-1)
- [ShapeIconButtonWithLabel Example](#shapeiconbuttonwithlabel-1)

### ShapeIconButton

```dart
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'IconButtons Code Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ShapeIconButton(
                  onPressed: null,
                  icon: Icons.add,
                ),
                const SizedBox(height: 30),
                ShapeIconButton(
                  onPressed: () {},
                  icon: Icons.add,
                  shape: ButtonShape.rectangle,
                ),
              ],
            ),
          )),
    );
  }
}
```

### ShapeIconButtonWithLabel

```dart
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'IconButtons Code Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ShapeIconButtonWithLabel(
                  onPressed: null,
                  icon: Icons.add,
                  label: "Add",
                ),
                const SizedBox(height: 30),
                ShapeIconButtonWithLabel(
                  onPressed: () {},
                  icon: Icons.add,
                  label: "Add",
                  shape: ButtonShape.rectangle,
                ),
              ],
            ),
          )),
    );
  }
}
```
