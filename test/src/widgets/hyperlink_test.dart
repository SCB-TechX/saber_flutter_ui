import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:saber_flutter_ui/saber_flutter_ui.dart';

void main() {
  testWidgets('Hyperlink clicks', (WidgetTester tester) async {
    ButtonSize size = ButtonSize.normal;
    MaterialApp materialApp = MaterialApp(
      theme: ThemeColor.blackTheme,
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
    // expect(buttonWidget.shape, buttonShape);
    // expect(paddingWidget.padding, buttonStyle[size]);
    // expect(textWidget.style!.fontFamily, textStyle[size]!.fontFamily);
    // expect(textWidget.style!.fontWeight, textStyle[size]!.fontWeight);
    // expect(textWidget.style!.fontSize, textStyle[size]!.fontSize);
  });
}
