import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  final ThemeData blackTheme = ThemeColor.blackTheme;
  final side = BorderSide(width: 1, color: blackTheme.primaryColor);
  final shape = RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(24)),
    side: side,
  );

  testWidgets('renders SecondaryButton', (WidgetTester tester) async {
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: SecondaryButton(
              onPressed: () {
                wasPressed = true;
              },
              label: 'button')),
    );

    await tester.pumpWidget(materialApp);

    Finder buttonMaterial = find.descendant(
      of: find.byType(SecondaryButton),
      matching: find.byType(Material),
    );

    Material material = tester.widget<Material>(buttonMaterial);

    await tester.tap(buttonMaterial);
    expect(wasPressed, true);
    expect(
        material.shape,
        RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          side: BorderSide(width: 1, color: blackTheme.primaryColor),
        ));
    expect(material.textStyle!.fontFamily, matches(Fonts.poppins));
    expect(material.textStyle!.fontWeight, FontWeight.w600);
    expect(material.textStyle!.fontSize,
        materialApp.theme!.textTheme.button!.fontSize);

    // onPress = null
    materialApp = MaterialApp(
      theme: blackTheme,
      home: const Center(
          child: SecondaryButton(onPressed: null, label: 'button')),
    );
    await tester.pumpWidget(materialApp);

    buttonMaterial = find.descendant(
      of: find.byType(SecondaryButton),
      matching: find.byType(Material),
    );

    material = tester.widget<Material>(buttonMaterial);

    expect(material.textStyle!.fontFamily, matches(Fonts.poppins));
    expect(material.textStyle!.fontWeight, FontWeight.w600);
    expect(material.textStyle!.fontSize,
        materialApp.theme!.textTheme.button!.fontSize);
    expect(
        material.shape,
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          side: BorderSide(width: 1, color: SystemColors.disable),
        ));
  });

  testWidgets('renders SecondaryButtonWithIcon', (WidgetTester tester) async {
    const IconData iconData = Icons.abc;
    bool wasPressed = false;
    MaterialApp materialApp = MaterialApp(
        theme: blackTheme,
        home: Center(
          child: SecondaryButtonWithIcon(
              onPressed: () {
                wasPressed = true;
              },
              label: 'button',
              icon: iconData),
        ));

    await tester.pumpWidget(materialApp);

    Finder buttonMaterial = find.descendant(
        of: find.byType(SecondaryButtonWithIcon),
        matching: find.byType(Material));
    Finder iconMaterial = find.byIcon(iconData);

    Material material = tester.widget<Material>(buttonMaterial);
    Icon targetIcon = tester.widget(iconMaterial);

    await tester.tap(buttonMaterial);
    expect(wasPressed, true);
    expect(
        material.shape,
        RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          side: BorderSide(width: 1, color: blackTheme.primaryColor),
        ));
    expect(material.textStyle!.fontFamily, matches(Fonts.poppins));
    expect(material.textStyle!.fontWeight, FontWeight.w600);
    expect(material.textStyle!.fontSize,
        materialApp.theme!.textTheme.button!.fontSize);
    expect(targetIcon.icon!.codePoint, iconData.codePoint);
    expect(targetIcon.size, 16.0);

    materialApp = MaterialApp(
        theme: blackTheme,
        home: const Center(
          child: SecondaryButtonWithIcon(
              onPressed: null, label: 'button', icon: iconData),
        ));

    await tester.pumpWidget(materialApp);

    buttonMaterial = find.descendant(
        of: find.byType(SecondaryButtonWithIcon),
        matching: find.byType(Material));
    iconMaterial = find.byIcon(iconData);

    material = tester.widget<Material>(buttonMaterial);
    targetIcon = tester.widget(iconMaterial);

    expect(
        material.shape,
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          side: BorderSide(width: 1, color: SystemColors.disable),
        ));
    expect(material.textStyle!.fontFamily, matches(Fonts.poppins));
    expect(material.textStyle!.fontWeight, FontWeight.w600);
    expect(material.textStyle!.fontSize,
        materialApp.theme!.textTheme.button!.fontSize);
    expect(targetIcon.icon!.codePoint, iconData.codePoint);
    expect(targetIcon.size, 16.0);
  });
}
