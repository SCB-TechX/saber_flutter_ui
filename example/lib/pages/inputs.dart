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
  String _dropdownValue = "One";
  bool _checkboxValue = false;
  FocusNode myFocusNode = new FocusNode();
  TextEditingController tempTextEditingController = TextEditingController();
  TextEditingController tempTextEditingController1 = TextEditingController();

  TextEditingController _searchController = TextEditingController();
  TextEditingController _controller = TextEditingController();

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
        // OutlineBorderTextFormField(
        //   labelText: "Enter a search term*",
        //   myFocusNode: myFocusNode,
        //   tempTextEditingController: tempTextEditingController1,
        //   keyboardType: TextInputType.number,
        //   textInputAction: TextInputAction.next,
        //   autofocus: false,
        //   checkOfErrorOnFocusChange: true,
        //   validation: (textToValidate) {
        //     print("Value Validated");
        //     return "* Please enter valid IFSC Code";
        //   },
        // ),

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
            helperText: 'Helper Text',
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

        //   // Radios
        //   ListTile(
        //     title: const Text("Lafayette"),
        //     leading: Radio<SingingCharacter>(
        //       value: SingingCharacter.lafayette,
        //       groupValue: _character,
        //       onChanged: (SingingCharacter? value) {
        //         setState(() {
        //           _character = value;
        //         });
        //       },
        //     ),
        //   ),
        //   ListTile(
        //     title: const Text("Thomas Jefferson"),
        //     leading: Radio<SingingCharacter>(
        //       value: SingingCharacter.jefferson,
        //       groupValue: _character,
        //       onChanged: (SingingCharacter? value) {
        //         setState(() {
        //           _character = value;
        //         });
        //       },
        //     ),
        //   ),

        //   // Checkbox
        //   CheckboxListTile(
        //     title: const Text("title text"),
        //     value: _checkboxValue,
        //     onChanged: (v) {
        //       setState(() {
        //         _checkboxValue = v!;
        //       });
        //     },
        //     controlAffinity: ListTileControlAffinity.leading,
        //   ),

        //   // Dropdown
        //   DropdownButton<String>(
        //     value: _dropdownValue,
        //     underline: Container(
        //       height: 1,
        //       color: SystemColors.disable,
        //     ),
        //     onChanged: (String? newValue) {
        //       setState(() {
        //         _dropdownValue = newValue!;
        //       });
        //     },
        //     items: <String>["One", "Two", "Free", "Four"]
        //         .map<DropdownMenuItem<String>>((String value) {
        //       return DropdownMenuItem<String>(
        //         value: value,
        //         child: Text(value),
        //       );
        //     }).toList(),
        //   ),
      ],
    );
  }
}
