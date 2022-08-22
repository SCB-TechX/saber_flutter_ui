# 🔥 [WIP] IconButtons

![icon buttons overview](/img/docs/core-components/icon-buttons/icon-buttons-overview.png)


## IconButtons

- `ShapeIconButton`
- `ShapeIconButtonWithLabel`

### ShapeIconButton

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
