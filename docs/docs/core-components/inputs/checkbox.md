# Checkbox
![Checkbox button](/img/docs/core-components/inputs/checkbox.png)

## Example
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Checkbox Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Checkbox(
                value: _checkboxValue,
                onChanged: (v) {
                  setState(() {
                    _checkboxValue = v!;
                  });
                },
              ),
              Text(
                'Checkbox',
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
          CheckboxListTile(
            contentPadding: const EdgeInsets.all(0.0),
            title: const Text("CheckboxListTile"),
            value: _checkboxValue,
            onChanged: (v) {
              setState(() {
                _checkboxValue = v!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          ListTile(
            title: const Text("ListTile&Checkbox"),
            leading: Checkbox(
              value: _checkboxValue,
              onChanged: (v) {
                setState(() {
                  _checkboxValue = v!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
```
