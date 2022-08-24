# [WIP]Inputs

- [`TextField`](inputs#text-field)
- [`Dropdown`](inputs#dropdown)
- [`Radio`](inputs#radio)
- [`Checkbox`](inputs#checkbox)

## Text Field
A text field lets the user enter text, either with hardware keyboard or with an onscreen keyboard.  

Using a [TextField class](https://api.flutter.dev/flutter/material/TextField-class.html) is an easy way to allow user input. And use a TextEditingController, as described [here](https://docs.flutter.dev/cookbook/forms/text-field-changes). This will give you access to the text state.

If you making a Form where you require save, reset, or validate multiple fields at once, use [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html), which integrates with the [Form](https://api.flutter.dev/flutter/widgets/Form-class.html) widget.

To use without a Form, pass a GlobalKey to the constructor and use GlobalKey.currentState to save or reset the form field.

Use InputDecoration objects to text field decoration. The border, labels, icons, and styles used to decorate a Material Design text field.

Basic example for use `TextField`, 
- InputDecoration
    - Border
        - [`UnderlineInputBorder`](inputs#underline-input-border)
        - [`OutlineInputBorder`](inputs#outline-input-border)
    - [`ErrorText`](inputs#error-text)
    - [`HelperText`](inputs#helper-text)
    - [`HintText`](inputs#hint-text)
    - [`Suffix`](inputs#suffix)

### Underline Input Border
Default border of `InputDecoration` is `UnderlineInputBorder`, do not need to set border.  
If you want to set it, use `border: UnderlineInputBorder()`.

![Underline Input Border](/img/docs/core-components/inputs/example-underline.png)
```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Label Text',
  ),
)
```

Add background with underline input border.

```dart
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
      labelText: "Label text",
    ),
  ),
)
```

### Outline Input Border
Draws a rounded rectangle around an InputDecorator's container.
Set border of `InputDecoration` to `OutlineInputBorder`. 

![Outline Input Border](/img/docs/core-components/inputs/example-outline.png)
```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    labelText: 'Label Text',
    helperText: 'Message goes here',
  ),
)
```

### Error Text
This sample shows how to create a TextField with hint text, a red border on all sides, and an error message. To display a red border and error message, provide errorText to the InputDecoration constructor.  
Use `errorText`, border will become colored red.

![Input Error Text](/img/docs/core-components/inputs/example-error-text.png)
```dart
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))),
    labelText: 'Label Text',
    helperText: 'Message goes here',
    errorText: 'Error Text',
  ),
)
```

### Helper Text
`helperText` is additional text. It displays the helperText below the input area to help the user understand what input is required.

![Input Helper Text](/img/docs/core-components/inputs/example-helper-text.png)
```dart
TextField(
  decoration: InputDecoration(
    labelText: 'Label Text',
  ),
)
```

### Hint Text
The `hintText` it displays inside the input area to help the user understand what input is required. 

Different from LabelText that when user focus, hintText will disappear.
The labelText will be shown as hint which is animating to the top when the cursor is getting focused.

![Input Hint Text](/img/docs/core-components/inputs/example-hint-text.png)
```dart
TextField(
  decoration: InputDecoration(
    hintText: 'Hint Text',
  ),
)
```

### Suffix
This sample shows how to style a TextField with a round border and additional text before and after the input area. It displays "Suffix" after the input area.

> **_NOTE:_**  There are also "Prefix" additional text before the input area, 

![Input Suffix](/img/docs/core-components/inputs/example-suffix.png)

```dart
TextField(
  decoration: InputDecoration(
    suffix: IconButton(
      constraints: BoxConstraints(maxHeight: 36),
      onPressed:  () {}, //ตรงนี้เอาไว้ใช้สำหรับ clear field ได้
      icon: Icon(Icons.clear),
    ),
    labelText: 'Label Text',
  ),
)
```

## Dropdown
- [`UnderlineInputBorder`](inputs#underline-border)
- [`OutlineInputBorder`](inputs#outline-border)

### Underline Border

### Outline Border

## Radio

## Checkbox

## Example

- [`TextField`](inputs#text-field)
- [`Search`](inputs#search)
- [`Dropdown`](inputs#dropdown)
- [`Radio`](inputs#radio)
- [`Checkbox`](inputs#checkbox)

### Search