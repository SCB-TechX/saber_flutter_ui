import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() {
  final ThemeData blackTheme = ThemeColor.blackTheme;
  final buttonStyle = <ButtonSize, EdgeInsets>{
    ButtonSize.normal: getPadding(ButtonSize.normal),
    ButtonSize.small: getPadding(ButtonSize.small),
    ButtonSize.extraSmall: getPadding(ButtonSize.extraSmall),
  };
  final Map<ButtonSize, TextStyle> textStyle = {
    ButtonSize.normal: getTextStyle(ButtonSize.normal),
    ButtonSize.small: getTextStyle(ButtonSize.small),
    ButtonSize.extraSmall: getTextStyle(ButtonSize.extraSmall),
  };
  const buttonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(24)),
  );

  testWidgets('renders PrimaryButton default styles',
      (WidgetTester tester) async {
    ButtonSize size = ButtonSize.normal;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButton(
        onPressed: () {},
        label: 'button',
        size: size,
      )),
    );

    await tester.pumpWidget(materialApp);

    Material buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButton),
      matching: find.byType(Material),
    ));
    Padding paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButton),
        matching: find.byType(Padding),
      ),
    );
    Text textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButton), matching: find.byType(Text)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);

    // small
    size = ButtonSize.small;
    materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButton(
        onPressed: () {},
        label: 'button',
        size: size,
      )),
    );

    await tester.pumpWidget(materialApp);

    buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButton),
      matching: find.byType(Material),
    ));
    paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButton),
        matching: find.byType(Padding),
      ),
    );
    textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButton), matching: find.byType(Text)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);

    // extra small
    size = ButtonSize.extraSmall;
    materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButton(
        onPressed: () {},
        label: 'button',
        size: size,
      )),
    );

    await tester.pumpWidget(materialApp);

    buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButton),
      matching: find.byType(Material),
    ));
    paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButton),
        matching: find.byType(Padding),
      ),
    );
    textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButton), matching: find.byType(Text)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);
  });

  testWidgets('renders PrimaryButtonWithIcon default styles',
      (WidgetTester tester) async {
    IconData iconData = Icons.abc;
    ButtonSize size = ButtonSize.normal;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButtonWithIcon(
        onPressed: () {},
        label: 'button',
        size: size,
        icon: iconData,
      )),
    );

    await tester.pumpWidget(materialApp);

    Material buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButtonWithIcon),
      matching: find.byType(Material),
    ));
    Padding paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButtonWithIcon),
        matching: find.byType(Padding),
      ),
    );
    Text textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Text)));
    Icon iconWidget = tester.widget(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Icon)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);
    expect(iconWidget.icon, iconData);
    expect(iconWidget.size, 16.0);

    // small
    size = ButtonSize.small;
    materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButtonWithIcon(
        onPressed: () {},
        label: 'button',
        size: size,
        icon: iconData,
      )),
    );

    await tester.pumpWidget(materialApp);

    buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButtonWithIcon),
      matching: find.byType(Material),
    ));
    paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButtonWithIcon),
        matching: find.byType(Padding),
      ),
    );
    textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Text)));
    iconWidget = tester.widget(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Icon)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);
    expect(iconWidget.icon, iconData);
    expect(iconWidget.size, 16.0);

    // extra small
    size = ButtonSize.extraSmall;
    materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButtonWithIcon(
        onPressed: () {},
        label: 'button',
        size: size,
        icon: iconData,
      )),
    );

    await tester.pumpWidget(materialApp);

    buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(PrimaryButtonWithIcon),
      matching: find.byType(Material),
    ));
    paddingWidget = tester.widget<Padding>(
      find.descendant(
        of: find.byType(PrimaryButtonWithIcon),
        matching: find.byType(Padding),
      ),
    );
    textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Text)));
    iconWidget = tester.widget(find.descendant(
        of: find.byType(PrimaryButtonWithIcon), matching: find.byType(Icon)));
    expect(buttonWidget.shape, buttonShape);
    expect(paddingWidget.padding, buttonStyle[size]);
    expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);
    expect(iconWidget.icon, iconData);
    expect(iconWidget.size, 16.0);
  });

  testWidgets('PrimaryButton onPressed', (WidgetTester tester) async {
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButton(
        onPressed: () {
          wasPressed = true;
        },
        label: 'button',
      )),
    );

    await tester.pumpWidget(materialApp);

    await tester.tap(find.descendant(
      of: find.byType(PrimaryButton),
      matching: find.byType(Material),
    ));
    expect(wasPressed, true);
  });

  testWidgets('PrimaryButtonWithIcon onPressed', (WidgetTester tester) async {
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: PrimaryButtonWithIcon(
        onPressed: () {
          wasPressed = true;
        },
        label: 'button',
        icon: Icons.abc,
      )),
    );

    await tester.pumpWidget(materialApp);

    await tester.tap(find.descendant(
      of: find.byType(PrimaryButtonWithIcon),
      matching: find.byType(Material),
    ));
    expect(wasPressed, true);
  });
}
