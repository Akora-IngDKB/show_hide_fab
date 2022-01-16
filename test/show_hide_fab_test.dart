import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// ignore: avoid_relative_lib_imports
import '../example/lib/main.dart';

void main() {
  testWidgets('Show/Hide FAB on button click', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MyApp());

    // Tap the button to Hide the FAB
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget with the new item.
    await tester.pumpAndSettle();

    // Expect not to find the FAB
    expect(find.byType(FloatingActionButton), findsNothing);

    await tester.pumpAndSettle();

    // Tap the button to Show the FAB
    await tester.tap(find.byType(ElevatedButton));

    // Rebuild the widget with the new item.
    await tester.pumpAndSettle();

    // Expect not to find the FAB
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
