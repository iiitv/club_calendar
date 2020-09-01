import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:club_calendar/main.dart';


void main() {
  testWidgets('app build smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
  });
}
