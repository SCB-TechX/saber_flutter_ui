# PrimaryButtons

The `PrimaryButton` is derived from [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html); has rounded corners, padding, and color that varies depending on the theme. If you need a full width button, use the `SizedBox` widget wrapped around a button. `SizedBox` enforces the child to match its parent size.

![primary buttons overview](/img/docs/core-components/buttons/primary-buttons/primary-buttons-overview.png)

## PrimaryButtons

- [`PrimaryButton`](#primarybutton)
- [`PrimaryButtonWithIcon`](#primarybuttonwithicon)

### PrimaryButton

![example primary buttons](/img/docs/core-components/buttons/primary-buttons/example-primary-button.png)

```dart
PrimaryButton(
  onPressed: () {},
  label: primaryButtonText,
),
PrimaryButton(
  onPressed: () {},
  size: ButtonSize.small,
  label: primaryButtonText,
),
PrimaryButton(
  onPressed: () {},
  size: ButtonSize.extraSmall,
  label: primaryButtonText,
),
```

### PrimaryButtonWithIcon
![example primary buttons with icon](/img/docs/core-components/buttons/primary-buttons/example-primary-button-with-icon.png)

```dart
PrimaryButtonWithIcon(
  onPressed: () {},
  label: primaryButtonText,
  icon: Icons.add,
),
PrimaryButtonWithIcon(
  onPressed: () {},
  size: ButtonSize.small,
  label: primaryButtonText,
  icon: Icons.add,
),
PrimaryButtonWithIcon(
  onPressed: () {},
  size: ButtonSize.extraSmall,
  label: primaryButtonText,
  icon: Icons.add,
),
```

### Button Sizes

You can change a button size by pass the `size` parameter to the widget

- `normal` (default)
- `small`
- `extraSmall`

```dart
PrimaryButton(
  onPressed: () {},
  size: ButtonSize.small,
  label: primaryButtonText,
),
PrimaryButtonWithIcon(
  onPressed: () {},
  size: ButtonSize.extraSmall,
  label: primaryButtonText,
  icon: Icons.add,
),
```

## Examples

### PrimaryButton

```dart
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

const primaryButtonText = 'Primary Button';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'PrimaryButtons Code Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryButton(
                  onPressed: () {},
                  label: primaryButtonText,
                ),
                PrimaryButton(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: primaryButtonText,
                ),
                PrimaryButton(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                ),
                const PrimaryButton(
                  onPressed: null,
                  label: primaryButtonText,
                ),
                const PrimaryButton(
                  onPressed: null,
                  size: ButtonSize.small,
                  label: primaryButtonText,
                ),
                const PrimaryButton(
                  onPressed: null,
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                ),
              ],
            ),
          )),
    );
  }
}
```

### PrimaryButtonWithIcon

```dart
import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

const primaryButtonText = 'Primary Button';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'PrimaryButtons Code Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.small,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                PrimaryButtonWithIcon(
                  onPressed: () {},
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                const PrimaryButtonWithIcon(
                  onPressed: null,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                const PrimaryButtonWithIcon(
                  onPressed: null,
                  size: ButtonSize.small,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
                const PrimaryButtonWithIcon(
                  onPressed: null,
                  size: ButtonSize.extraSmall,
                  label: primaryButtonText,
                  icon: Icons.add,
                ),
              ],
            ),
          )),
    );
  }
}
```
