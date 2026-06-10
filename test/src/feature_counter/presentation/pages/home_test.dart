import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development/src/feature_counter/presentation/pages/home.dart';

void main() {
  testWidgets('TODO: Implement tests for home.dart', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(home: Home(),));
    expect(find.text('0'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.exposure_plus_1));
    await tester.pump();
  },);
}