import 'package:flutter/material.dart';
import 'package:saber_flutter_ui/saber_flutter_ui.dart';

enum SingingCharacter { lafayette, jefferson }

class InputWidgets extends StatefulWidget {
  const InputWidgets({Key? key}) : super(key: key);

  @override
  State<InputWidgets> createState() => _InputWidgets();
}

class _InputWidgets extends State<InputWidgets> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  bool _checkboxValue = false;
  FocusNode myFocusNode = new FocusNode();
  TextEditingController tempTextEditingController = TextEditingController();
  TextEditingController tempTextEditingController1 = TextEditingController();

  /// Input
  TextEditingController _searchController = TextEditingController();
  TextEditingController _controller = TextEditingController();

  /// Dropdown
  final items = ['One', 'Two', 'Three', 'Four'];
  String _dropdownValue = "One";

  String? selectedValue = null;

  // This function is triggered when the clear buttion is pressed
  void _clearTextField() {
    // Clear everything in the text field
    _searchController.clear();
    // Call setState to update the UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// Search and clear text field
        TextFormField(
          controller: _searchController,
          onChanged: (value) {
            // Call setState to update the UI
            setState(() {});
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(28))),
            hintText: 'Enter a search term',
            prefixIcon: Icon(Icons.search),
            suffixIcon: _searchController.text.isEmpty
                ? null
                : IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: _clearTextField,
                  ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),

        /// TextField with Container
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                offset: Offset(0, 0),
                blurRadius: 20,
                spreadRadius: 5,
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Enter text",
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            suffix: IconButton(
              constraints: BoxConstraints(maxHeight: 36),
              onPressed: _controller.clear,
              icon: Icon(Icons.clear),
            ),
            labelText: 'Underline Input Border',
          ),
        ),
        const SizedBox(
          height: 16,
        ),

        TextField(
          decoration: InputDecoration(
            hintText: 'Underline Input Border',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: 'Keyboard Number Type', suffixText: 'THB'),
        ),

        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            labelText: 'Outline Input Border',
            helperText: 'Message goes here',
          ),
        ),

        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              labelText: 'Outline Input Border',
              errorText: 'Message goes here'),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              hintText: 'Password',
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.visibility,
                ),
                onPressed: () {},
              )),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            hintText: 'Outline Input Border',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              hintText: 'Outline Input Border',
              errorText: 'Message goes here'),
        ),
        const SizedBox(
          height: 16,
        ),

        // Dropdown
        Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),

            // dropdown below..
            child: DropdownButton<String>(
              value: _dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  _dropdownValue = newValue!;
                });
              },
              items: items
                  .map<DropdownMenuItem<String>>(
                      (String value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          ))
                  .toList(),
              isExpanded: true, //make true to take width of parent widget
              // underline: Container(), //empty line
              underline: Container(
                height: 1,
                color: SystemColors.disable,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
            labelText: 'Dropdown Label Text',
          ),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField(
          decoration: const InputDecoration(
            hintText: 'Dropdown Hint Text',
            helperText: 'Message goes here',
          ),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Outline Label Text'),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              errorText: 'Message goes here',
              labelText: 'Outline Label Text'),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Outline Hint Text'),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: items
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
        // Radios
        Row(
          children: [
            Radio<SingingCharacter>(
              groupValue: _character,
              value: SingingCharacter.lafayette,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Text(
              'Lafayette',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        Row(
          children: [
            Radio<SingingCharacter>(
              groupValue: _character,
              value: SingingCharacter.jefferson,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            Text(
              'Thomas Jefferson',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        RadioListTile<SingingCharacter>(
          contentPadding: const EdgeInsets.all(0.0),
          title: const Text('Lafayette'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          contentPadding: const EdgeInsets.all(0.0),
          title: const Text('Thomas Jefferson'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        ListTile(
          title: const Text("Lafayette"),
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
          title: const Text("Thomas Jefferson"),
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
          title: const Text("Checkbox ListTile"),
          value: _checkboxValue,
          onChanged: (v) {
            setState(() {
              _checkboxValue = v!;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        ListTile(
          title: const Text("Checkbox"),
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
    );
  }
}
