import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main() {
  testWidgets("Checking the reverse widget", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textField = find.byKey(Key("reverse_field"));
    expect(textField, findsOneWidget);
    await tester.enterText(textField, "world");
    expect(find.text("world"), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text("dlrow"), findsOneWidget);
  });
}
