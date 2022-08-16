import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travel_wallet_ui/travel_wallet_ui.dart';

void main() {
  testWidgets('Hyperlink default styles', (WidgetTester tester) async {
    await tester.pumpWidget(Material(
        child: Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Hyperlink(label: 'link', onTap: () {}),
      ),
    )));

    Text textWidget = tester.widget<Text>(find.descendant(
        of: find.byType(Hyperlink), matching: find.byType(Text)));
    expect(textWidget.style!.color, SystemColors.hyperlink);
  });

  testWidgets('Hyperlink onTap', (WidgetTester tester) async {
    bool wasTapped = false;
    await tester.pumpWidget(Material(
        child: Directionality(
      textDirection: TextDirection.ltr,
      child: Center(
        child: Hyperlink(
            label: 'link',
            onTap: () {
              wasTapped = true;
            }),
      ),
    )));

    await tester.tap(find.byType(InkWell));
    expect(wasTapped, true);
  });
}
