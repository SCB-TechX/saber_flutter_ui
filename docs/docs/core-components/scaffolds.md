# Scaffolds
![Example navigation](/img/docs/core-components/scaffolds/navigation.png)

- [`Appbars`](/docs/core-components/scaffolds#appbars)
- [`BottomNavigationBar`](/docs/core-components/scaffolds#bottom-navigation-bar)

## Appbars
You can use [AppBar class](https://api.flutter.dev/flutter/material/AppBar-class.html) that flutter provided. This sample show some properties on appbar.

### Center Title
Use `centerTitle` for alignment center.

![Example Appbars](/img/docs/core-components/scaffolds/appbar-center-title.png)
```dart
AppBar(
  title: const Text('Title'),
  actions: const <Widget>[Icon(Icons.more_vert)],
  leading: const Icon(
    Icons.chevron_left,
  ),
  centerTitle: true,
)
```

### Leading & Action

![Example Appbars](/img/docs/core-components/scaffolds/appbar-leading-and-action.png)
```dart
AppBar(
  title: const Text('Title'),
  leading: const Icon(
    Icons.chevron_left,
  ),
  centerTitle: true,
)
```

Action

```dart
AppBar(
  title: const Text('Title'),
  actions: const <Widget>[Icon(Icons.more_vert)],
  leading: const Icon(
    Icons.chevron_left,
  ),
  centerTitle: true,
)
```

### Elevation
Default app bar have an elevation shadow (elevation: 4). You can change elevation to 0 for remove shadow.

![Example Appbar Elevation](/img/docs/core-components/scaffolds/appbar-elevation.png)
```dart
AppBar(
  title: const Text('Title'),
  actions: const <Widget>[Icon(Icons.more_vert)],
  leading: const Icon(
    Icons.chevron_left,
  ),
  centerTitle: true,
  elevation: 0
)
```


## Bottom Navigation Bar
![Example Bottom Navigation Bar](/img/docs/core-components/scaffolds/bottom-navigation-bar.png)
```dart
Scaffold(
  appBar: AppBar(
    title: const Text('Sample Code'),
  ),
  body: .....,
  bottomNavigationBar, 
)
```

## Example

![Example Appbars](/img/docs/core-components/scaffolds/appbar-leading-and-action.png)

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