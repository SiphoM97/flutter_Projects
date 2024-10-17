import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:barberuseapp/main.dart';

void main() {
  testWidgets('Login screen is displayed', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the login screen is displayed.
    expect(find.text('Login'), findsOneWidget); // Check for the login button
    expect(find.byType(TextField),
        findsNWidgets(2)); // Check for two text fields (Email and Password)
    expect(find.text('Forgot Password?'),
        findsOneWidget); // Check for the 'Forgot Password?' text
    expect(find.text('Register as new user'),
        findsOneWidget); // Check for the 'Register as new user' text
  });
}
