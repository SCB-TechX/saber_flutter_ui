import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() {
  final ThemeData blackTheme = ThemeColor.blackTheme;
  final Map<ButtonSize, TextStyle> textStyle = {
    ButtonSize.normal: getTextStyle(ButtonSize.normal),
  };

  testWidgets('LinkButton default styles', (WidgetTester tester) async {
    TextStyle normalTextStyle = getTextStyle(ButtonSize.normal);
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: LinkButton(
        onPressed: () {},
        label: 'button',
      )),
    );

    await tester.pumpWidget(materialApp);

    Material buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(LinkButton),
      matching: find.byType(Material),
    ));
    expect(buttonWidget.textStyle!.fontFamily, normalTextStyle.fontFamily);
    expect(buttonWidget.textStyle!.fontWeight, normalTextStyle.fontWeight);
    expect(buttonWidget.textStyle!.fontSize, normalTextStyle.fontSize);
  });

  testWidgets('LinkButtonIcon default styles', (WidgetTester tester) async {
    IconData iconData = Icons.abc;
    TextStyle normalTextStyle = getTextStyle(ButtonSize.normal);
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: LinkButtonWithIcon(
        onPressed: () {},
        label: 'button',
        icon: iconData,
      )),
    );

    await tester.pumpWidget(materialApp);

    Material buttonWidget = tester.widget<Material>(find.descendant(
      of: find.byType(LinkButtonWithIcon),
      matching: find.byType(Material),
    ));
    Icon iconWidget = tester.widget(find.descendant(
        of: find.byType(LinkButtonWithIcon), matching: find.byType(Icon)));
    expect(buttonWidget.textStyle!.fontFamily, normalTextStyle.fontFamily);
    expect(buttonWidget.textStyle!.fontWeight, normalTextStyle.fontWeight);
    expect(buttonWidget.textStyle!.fontSize, normalTextStyle.fontSize);
    expect(iconWidget.icon, iconData);
    expect(iconWidget.size, 16.0);
  });

  testWidgets('LinkButton onPressed', (WidgetTester tester) async {
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: LinkButton(
        onPressed: () {
          wasPressed = true;
        },
        label: 'button',
      )),
    );

    await tester.pumpWidget(materialApp);
    await tester.tap(find.descendant(
      of: find.byType(LinkButton),
      matching: find.byType(Material),
    ));

    expect(wasPressed, true);
  });

  testWidgets('LinkButtonWithIcon onPressed', (WidgetTester tester) async {
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: LinkButtonWithIcon(
              onPressed: () {
                wasPressed = true;
              },
              label: 'button',
              icon: Icons.abc)),
    );

    await tester.pumpWidget(materialApp);
    await tester.tap(find.descendant(
      of: find.byType(LinkButtonWithIcon),
      matching: find.byType(Material),
    ));

    expect(wasPressed, true);
  });
}
