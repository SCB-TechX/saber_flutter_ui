import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  testWidgets('renders SecondaryButton, SecondaryButtonWithIcon',
      (WidgetTester tester) async {
    final ThemeData blackTheme = ThemeColor.blackTheme;
    final MaterialApp materialApp = MaterialApp(
      theme: blackTheme,
      home: Center(
          child: SecondaryButton(onPressed: () {}, label: 'Secondary Button')),
    );

    await tester.pumpWidget(materialApp);

    expect(find.text('Secondary Button'), findsOneWidget);

    final Finder buttonMaterial = find.descendant(
      of: find.byType(SecondaryButton),
      matching: find.byType(Material),
    );

    Material material = tester.widget<Material>(buttonMaterial);
    final side = BorderSide(width: 1, color: blackTheme.primaryColor);
    final shape = RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      side: side,
    );

    expect(material.textStyle?.fontFamily, matches(Fonts.poppins));
    expect(material.textStyle?.fontWeight, FontWeight.w600);
    expect(material.textStyle?.fontSize,
        materialApp.theme?.textTheme.button?.fontSize);
    expect(material.shape, shape);
  });
}
