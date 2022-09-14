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
  bottomNavigationBar: ......,
)
```

### Bottom Navigation Bar Item
![Example Bottom Navigation Bar Item](/img/docs/core-components/scaffolds/bottom-navigation-bar-item.png)

```dart
Scaffold(
  bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.lens),
        label: 'Label 1',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.lens),
        label: 'Label 2',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.lens),
        label: 'Label 3',
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Theme.of(context).primaryColor,
    onTap: _onItemTapped,
  ),
);
```

> **_NOTE:_**   `BottomNavigationBar` type is a widget, which means you can customize it yourself if you don't want to use `BottomNavigationBarItem`.

### Bottom AppBar
![Example Bottom Bottom AppBar](/img/docs/core-components/scaffolds/bottom-app-bar.png)

```dart
Scaffold(
  bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: bottomAppBarContents,
  ),
)
```

## Examples
- [`Appbars`](/docs/core-components/scaffolds#appbars-1)
- [`BottomAppBar`](/docs/core-components/scaffolds#bottom-appbar-1)

### AppBars
This sample shows an AppBar with two simple actions. The first action opens a [SnackBar](https://api.flutter.dev/flutter/material/SnackBar-class.html), while the second action navigates to a new page.

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
```

### Bottom AppBar
This example shows the BottomAppBar, which can be configured to have a notch using the BottomAppBar.shape property. This also includes an optional FloatingActionButton, which illustrates the FloatingActionButtonLocations in relation to the BottomAppBar.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const BottomAppBarDemo());
}

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({Key? key}) : super(key: key);

  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  bool _showFab = true;
  bool _showNotch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab = value;
    });
  }

  void _onFabLocationChanged(FloatingActionButtonLocation? value) {
    setState(() {
      _fabLocation = value ?? FloatingActionButtonLocation.endDocked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Bottom App Bar Demo'),
        ),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 88),
          children: <Widget>[
            SwitchListTile(
              title: const Text(
                'Floating Action Button',
              ),
              value: _showFab,
              onChanged: _onShowFabChanged,
            ),
            SwitchListTile(
              title: const Text('Notch'),
              value: _showNotch,
              onChanged: _onShowNotchChanged,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Floating action button position'),
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Docked - End'),
              value: FloatingActionButtonLocation.endDocked,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Docked - Center'),
              value: FloatingActionButtonLocation.centerDocked,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Floating - End'),
              value: FloatingActionButtonLocation.endFloat,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
            RadioListTile<FloatingActionButtonLocation>(
              title: const Text('Floating - Center'),
              value: FloatingActionButtonLocation.centerFloat,
              groupValue: _fabLocation,
              onChanged: _onFabLocationChanged,
            ),
          ],
        ),
        floatingActionButton: _showFab
            ? FloatingActionButton(
                onPressed: () {},
                tooltip: 'Create',
                child: const Icon(Icons.add),
              )
            : null,
        floatingActionButtonLocation: _fabLocation,
        bottomNavigationBar: _DemoBottomAppBar(
          fabLocation: _fabLocation,
          shape: _showNotch ? const CircularNotchedRectangle() : null,
        ),
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
```