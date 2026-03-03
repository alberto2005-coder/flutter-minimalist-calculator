// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora_flutter/main.dart';

void main() {
  testWidgets('Calculator display starts at 0', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CalculatorApp());

    // Verify that our starting output is 0.
    expect(find.text('0'), findsOneWidget);
  });

  testWidgets('Calculator number button press', (WidgetTester tester) async {
    await tester.pumpWidget(const CalculatorApp());

    // Tap a number button (e.g., '1')
    await tester.tap(find.text('1'));
    await tester.pump();

    // Verify output changes to '1'
    // It should find '1' in the display and on the button.
    expect(find.text('1'), findsNWidgets(2));
  });
}
