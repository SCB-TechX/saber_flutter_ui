# Hyperlink

- [`Hyperlink`](/docs/core-components/hyperlink)

## Example

![hyperlink overview](/img/docs/core-components/hyperlink/hyperlink-overview.png)

```dart
import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

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
              children: [HyperLink('Click me', onTap: () {})],
            ),
          )),
    );
  }
}
```
