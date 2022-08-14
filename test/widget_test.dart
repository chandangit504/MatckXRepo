// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:app_matchx/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('to verify Please enter your current residing City',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final firstName = find.byKey(ValueKey("firstNameTextField"));
    await tester.enterText(firstName, "chandan");

    final lastName = find.byKey(ValueKey("lastNameTextField"));
    await tester.enterText(lastName, "Rout");

    final email = find.byKey(ValueKey("emailTextField"));
    await tester.enterText(email, "chandan@gmail.com");

    final phone = find.byKey(ValueKey("phoneNumberTextField"));
    await tester.enterText(phone, "1234567890");

    final CompanyName = find.byKey(ValueKey("currentCompanyTextField"));
    await tester.enterText(CompanyName, "MYCompany");

    await tester.drag(find.byType(ListView), const Offset(0, -300));
    await tester.pumpAndSettle();

    final city = find.byKey(ValueKey("cityTextField"));
    await tester.enterText(city, "chennai");

    final DOB = find.byKey(ValueKey("dobTextField"));
    await tester.enterText(DOB, "25-02-99");

    await tester.drag(find.byType(ListView), const Offset(0, -300));
    await tester.pumpAndSettle();

    final submit = find.byKey(ValueKey("submitButton"));
    await tester.tap(submit);
    await tester.pumpAndSettle();

    await tester.pump(const Duration(milliseconds: 400)); // add delay
    await tester.pumpAndSettle();

    expect(find.text("Please enter your current residing Country"),
        findsOneWidget);
  });

  testWidgets('to verify Data Processing', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    final firstName = find.byKey(ValueKey("firstNameTextField"));
    await tester.enterText(firstName, "chandan");

    final lastName = find.byKey(ValueKey("lastNameTextField"));
    await tester.enterText(lastName, "Rout");

    final email = find.byKey(ValueKey("emailTextField"));
    await tester.enterText(email, "chandan@gmail.com");

    final phone = find.byKey(ValueKey("phoneNumberTextField"));
    await tester.enterText(phone, "1234567890");

    final CompanyName = find.byKey(ValueKey("currentCompanyTextField"));
    await tester.enterText(CompanyName, "MYCompany");

    await tester.drag(find.byType(ListView), const Offset(0, -300));
    await tester.pumpAndSettle();

    final city = find.byKey(ValueKey("cityTextField"));
    await tester.enterText(city, "chennai");

    final Country = find.byKey(ValueKey("countryTextField"));
    await tester.enterText(Country, "india");

    final DOB = find.byKey(ValueKey("dobTextField"));
    await tester.enterText(DOB, "25-02-99");

    await tester.drag(find.byType(ListView), const Offset(0, -300));
    await tester.pumpAndSettle();

    final submit = find.byKey(ValueKey("submitButton"));
    await tester.tap(submit);
    await tester.pump();

    await tester.pump(const Duration(milliseconds: 750)); // add delay
    await tester.pump();

    expect(find.text('Data is in processing.'), findsOneWidget);
  });
}
