---
sidebar_position: 2
---

# Themes

## Themes

We provided 5 different colors and themed

- [`Black`](#black)
- [`Blue`](#blue)
- [`Green`](#green)
- [`Yellow`](#yellow)
- [`Purple`](#purple)
- [`Red`](#red)

To change the theme, simply just change the `theme` parameter of the `MaterialApp` widget
### Black


![black theme overview](/img/docs/customize/themes/theme-black-overview.png)

### Blue

![blue theme overview](/img/docs/customize/themes/theme-blue-overview.png)

### Green

![green theme overview](/img/docs/customize/themes/theme-green-overview.png)

### Yellow

![yellow theme overview](/img/docs/customize/themes/theme-yellow-overview.png)

### Purple

![purple theme overview](/img/docs/customize/themes/theme-purple-overview.png)
### Red

![red theme overview](/img/docs/customize/themes/theme-red-overview.png)

## Changing the theme

```dart
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeColor.blackTheme, // here
      // ...
    );
  }
}
```
