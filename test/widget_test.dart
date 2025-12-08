import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hardtech/main.dart';
import 'package:hardtech/screens/home_screen.dart';
import 'package:hardtech/screens/splash_screen.dart';

void main() {
  testWidgets('Splash screen shows and navigates to HomeScreen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the SplashScreen is shown.
    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.text('Hard Tech'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for the splash screen timer to finish (3 seconds).
    await tester.pump(const Duration(seconds: 3));
    // Pump and settle to finish the navigation animation.
    await tester.pumpAndSettle();

    // Verify that we have navigated to the MainScreen, which contains the HomeScreen.
    expect(find.byType(SplashScreen), findsNothing);
    expect(find.byType(HomeScreen), findsOneWidget);


    // Verify that the new home screen widgets are present.
    expect(find.text('Hard Tech Dashboard'), findsOneWidget);
    expect(find.widgetWithText(TextField, 'Search for hardware issues...'), findsOneWidget);
    expect(find.text('PC Assembly Guide'), findsOneWidget);
    expect(find.text('Common Hardware Issues'), findsOneWidget);
  });
}
