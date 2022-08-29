# Radio
![Radio button](/img/docs/core-components/inputs/radio.png)

## Example
```dart
import 'package:flutter/material.dart';

enum SingingValue { value1, value2 }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Radio Code Sample';

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
  SingingValue? _character = SingingValue.value1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Radio<SingingValue>(
                groupValue: _character,
                value: SingingValue.value1,
                onChanged: (SingingValue? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Text(
                'Label 1',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          Row(
            children: [
              Radio<SingingValue>(
                groupValue: _character,
                value: SingingValue.value2,
                onChanged: (SingingValue? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Text(
                'Label 2',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          RadioListTile<SingingValue>(
            contentPadding: const EdgeInsets.all(0.0),
            title: const Text('Label 1'),
            value: SingingValue.value1,
            groupValue: _character,
            onChanged: (SingingValue? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          RadioListTile<SingingValue>(
            contentPadding: const EdgeInsets.all(0.0),
            title: const Text('Label 2'),
            value: SingingValue.value2,
            groupValue: _character,
            onChanged: (SingingValue? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          ListTile(
            title: const Text("Label 1"),
            leading: Radio<SingingValue>(
              value: SingingValue.value1,
              groupValue: _character,
              onChanged: (SingingValue? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text("Label 2"),
            leading: Radio<SingingValue>(
              value: SingingValue.value2,
              groupValue: _character,
              onChanged: (SingingValue? value) {
                setState(() {
                  _character = value;
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