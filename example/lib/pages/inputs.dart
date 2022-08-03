import 'package:flutter/material.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

enum SingingCharacter { lafayette, jefferson }

class InputWidgets extends StatefulWidget {
  const InputWidgets({Key? key}) : super(key: key);

  @override
  State<InputWidgets> createState() => _InputWidgets();
}

class _InputWidgets extends State<InputWidgets> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  String _dropdownValue = 'One';
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('Form - Input'),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: const TextField(
            decoration: InputDecoration(
                label: Text('TextField'), hintText: "Input your text ..."),
          ),
        ),

        // Radios
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),

        // Checkbox
        CheckboxListTile(
          title: const Text("title text"),
          value: _checkboxValue,
          onChanged: (v) {
            setState(() {
              _checkboxValue = v!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),

        // Dropdown
        DropdownButton<String>(
          value: _dropdownValue,
          underline: Container(
            height: 1,
            color: SystemColors.disable,
          ),
          onChanged: (String? newValue) {
            setState(() {
              _dropdownValue = newValue!;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
