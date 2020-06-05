// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:accessibilityapp/features/testing_tools/contrast_samples_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ContrastSamplePage', (WidgetTester tester) async {
    await _pumpIntoMaterialApp(
      tester,
      ContrastSamplePage(),
    );

    await expectLater(
      tester,
      meetsGuideline(textContrastGuideline),
    );
  });
}

Future<void> _pumpIntoMaterialApp(
  WidgetTester tester,
  Widget widget,
) async {
  return await tester.pumpWidget(
    MaterialApp(
      home: widget,
    ),
  );
}
