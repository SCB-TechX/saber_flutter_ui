# PrimaryButtons

![primary buttons overview](/img/docs/core-components/primary-buttons/primary-buttons-overview.png)

## PrimaryButtons

- [`PrimaryButton`](#primarybutton)
- [`PrimaryButtonWithIcon`](#primarybuttonwithicon)

### PrimaryButton

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
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

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
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

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
