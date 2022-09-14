# Steppers

![steppers overview](/img/docs/core-components/steppers/steppers-overview.png)

## Example

```dart
import 'package:flutter/material.dart' hide Step, Stepper, StepperType;
import 'package:saber_flutter_ui/saber_flutter_ui.dart'
    show Step, Stepper, StepperType;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _index = 0;
  static const String _title = 'Steppers Code Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: Stepper(
              type: StepperType.horizontal,
              currentStep: _index,
              onStepCancel: () {
                if (_index > 0) {
                  setState(() {
                    _index -= 1;
                  });
                }
              },
              onStepContinue: () {
                if (_index >= 0 && _index < 2) {
                  setState(() {
                    _index += 1;
                  });
                }
              },
              onStepTapped: (int index) {
                setState(() {
                  _index = index;
                });
              },
              steps: [
                Step(
                  isActive: _index >= 0,
                  title: const Text(''),
                  content: const Text('Content for Step 1'),
                  label: const Text("Step 1"),
                ),
                Step(
                  isActive: _index >= 1,
                  title: const Text(''),
                  content: const Text('Content for Step 2'),
                  label: const Text("Step 2"),
                ),
                Step(
                  isActive: _index >= 2,
                  title: const Text(''),
                  content: const Text('Content for Step 3'),
                  label: const Text("Step 3"),
                ),
              ],
            ),
          )),
    );
  }
}
```
