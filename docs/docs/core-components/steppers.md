# Steppers

![steppers overview](/img/docs/core-components/steppers/steppers-overview.png)

## Example

```dart
import 'package:flutter/material.dart'
    show BuildContext, Key, State, StatefulWidget, Text, Widget;
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

class StepperWidgets extends StatefulWidget {
  const StepperWidgets({Key? key}) : super(key: key);

  @override
  State<StepperWidgets> createState() => _StepperWidgets();
}

class _StepperWidgets extends State<StepperWidgets> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
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
      steps: <Step>[
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
    );
  }
}
```
