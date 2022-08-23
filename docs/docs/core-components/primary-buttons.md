# [WIP] PrimaryButtons

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

## Examples

### PrimaryButton

```dart
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

const primaryButtonText = 'Primary Button';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Button'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShapeIconButton(
              onPressed: () {},
              icon: Icons.add,
            ),
            ShapeIconButton(
              onPressed: () {},
              icon: Icons.add,
              shape: ButtonShape.circle,
              disabled: true,
            ),
            ShapeIconButton(
              onPressed: () {},
              icon: Icons.add,
              shape: ButtonShape.rectangle,
            ),
            ShapeIconButtonWithLabel(
              onPressed: () {},
              label: 'disabled',
              icon: Icons.add,
              shape: ButtonShape.circle,
              disabled: true,
            ),
            ShapeIconButtonWithLabel(
              onPressed: () {},
              label: 'label',
              icon: Icons.add,
              shape: ButtonShape.rectangle,
            ),
          ],
        ),
      ],
    );
  }
}
```

### PrimaryButtonWithIcon

```dart

```
