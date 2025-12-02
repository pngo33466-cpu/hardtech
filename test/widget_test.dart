// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hardtech/main.dart';
import 'package:hardtech/screens/main_screen.dart';
import 'package:hardtech/screens/splash_screen.dart';

void main() {
  testWidgets('Splash screen shows and navigates to MainScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the SplashScreen is shown.
    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.text('Hard Tech'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for the splash screen timer to finish (3 seconds).
    await tester.pump(const Duration(seconds: 3));
    // Pump one more frame to finish the navigation.
    await tester.pump();

    // Verify that we have navigated to the MainScreen.
    expect(find.byType(MainScreen), findsOneWidget);
    expect(find.byType(SplashScreen), findsNothing);

    // Verify the BottomNavigationBar is present with Home and Search tabs.
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
  });
}
