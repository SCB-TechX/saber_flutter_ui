# Select

- [`Dropdown`](/docs/core-components/selects#dropdown)
- [`DatePicker`](/docs/core-components/selects#date-picker)

## Dropdown
A dropdown button lets the user select from a number of items. The button shows the currently selected item as well as an arrow that opens a menu for selecting another item.

Basic example for use `DropdownButton`, 
- InputDecoration
    - Border
        - [`UnderlineInputBorder`](/docs/core-components/selects#underline-input-border)
        - [`OutlineInputBorder`](/docs/core-components/selects#outline-input-border)
    - [`ErrorText`](/docs/core-components/selects#error-text)
    - [`HelperText`](/docs/core-components/selects#helper-text)
    - [`Hint/Link Text`](/docs/core-components/selects#hintlink-text)

### Underline Input Border
Default border of `InputDecoration` is `UnderlineInputBorder`, do not need to set border.  
If you want to set it, use `border: UnderlineInputBorder()`.

![Dropdown Underline Input Border](/img/docs/core-components/inputs/example-dropdown-underline.png)
```dart
DropdownButtonFormField(
  decoration: InputDecoration(
    labelText: 'Label Text',
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
)
```

Dropdown underline border on background.

```dart
Container(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(10)
  ),

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
  )
)
```

### Outline Input Border
Draws a rounded rectangle around an InputDecorator's container.
Set border of `InputDecoration` to `OutlineInputBorder`. 

![Dropdown Outline Input Border](/img/docs/core-components/inputs/example-dropdown-outline.png)
```dart
DropdownButtonFormField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelText: 'Label Text'),
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
)
```

### Error Text
This sample shows how to create a TextField with hint text, a red border on all sides, and an error message. To display a red border and error message, provide errorText to the InputDecoration constructor.  
Use `errorText`, border will become colored red.

![Input Error Text](/img/docs/core-components/inputs/example-dropdown-error-text.png)
```dart
DropdownButtonFormField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      errorText: 'Message goes here',
      labelText: 'Label Text'),
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
)
```

### Helper Text
`helperText` is additional text. It displays the helperText below the input area to help the user understand what input is required.

![Input Helper Text](/img/docs/core-components/inputs/example-dropdown-helper-text.png)
```dart
DropdownButtonFormField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelText: 'Label Text'),
      helperText: 'Message goes here',
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
)
```

### Hint/Link Text
The `hintText` it displays inside the input area to help the user understand what input is required. 

Different from LabelText that when user focus, hintText will disappear.
The `labelText` will be shown as hint which is animating to the top when the cursor is getting focused.

![Input Hint Text](/img/docs/core-components/inputs/example-dropdown-hint-text.png)
```dart
DropdownButtonFormField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      hintText: 'Hint Text'),
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
)
```

```dart
DropdownButtonFormField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      labelText: 'Label Text'),
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
)
```

## Date Picker
A date picker is a helpful addition to your UI that makes it easy for your app users to select dates from a calendar. Whether you’re adding a date of birth field to a registration form or offering time slots for users to book an appointment, you can use a date picker library to simplify the process.

DatePicker is a material widget in a flutter that lets the user select a date. Since there is no widget available for creating a date picker we will use showDatePicker() function.

```dart
showDatePicker(
  context: context,
  initialDate: DateTime.now(),
  firstDate: DateTime(2015, 8),
  lastDate: DateTime(2101)
)
```

## Example

- [`Dropdown`](/docs/core-components/selects#dropdown-1)
- [`DatePicker`](/docs/core-components/selects#date-picker-1)

### Dropdown
This sample shows a DropdownButton with a outline border, whose value is one of "One", "Two", "Free", or "Four".

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Dropdown Code Sample';

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
  final items = ['One', 'Two', 'Three', 'Four'];
  String? selectedValue = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButtonFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              labelText: 'Label Text'),
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
      ),
    );
  }
}
```

### Date Picker
This sample 1 shows a date input with a outline border, when you focus will show date picker for select. And button select date.

First, add Package.
```dart title="pubspec.yaml"
dependencies:
  flutter:
    sdk: flutter
  intl: ^0.17.0
```

And complete Code For Date Picker.
```dart title="main.dart"
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:component_ui/component_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Date Picker Code Sample';

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
  DateTime selectedDate = DateTime.now();
  TextEditingController dateInput = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
        dateInput.text = formattedDate;
      });
    }
  }

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: dateInput,
            //editing controller of this TextField
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: "Enter Date", //label text of field
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                  ),
                  onPressed: () {},
                )), //icon of text field
            readOnly: true,
            //set it true, so that user will not able to edit text
            onTap: () => _selectDate(context),
          ),

          //button show
          SizedBox(
            height: 20.0,
          ),
          Text("Select date is ${dateInput.text}"),
          SizedBox(
            height: 20.0,
          ),
          PrimaryButton(
            onPressed: () => _selectDate(context),
            label: 'Select date',
          ),
        ],
      ),
    );
  }
}
```