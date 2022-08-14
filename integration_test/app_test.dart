import 'package:app_matchx/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets(
      "Match testing: to verify Please enter your current residing City",
      (WidgetTester tester) async {
    await tester.pumpWidget(app.MyApp());
    // WidgetsFlutterBinding.ensureInitialized();
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 5));

    final Finder firstName = find.byKey(Key("firstNameTextField"));
    await Future.delayed(const Duration(seconds: 7));
    await tester.enterText(firstName, 'chandan');
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    final Finder lastName = find.byKey(Key("lastNameTextField"));
    await tester.enterText(lastName, "Rout");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    final Finder email = find.byKey(Key("emailTextField"));
    await tester.enterText(email, "chandan@gmail.com");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 4));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final Finder phone = find.byKey(Key("phoneNumberTextField"));
    await tester.enterText(phone, "1234567890");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump(new Duration(seconds: 10));

    final Finder CompanyName = find.byKey(Key("currentCompanyTextField"));
    await tester.enterText(CompanyName, "MYCompany");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final Finder city = find.byKey(Key("cityTextField"));
    await tester.enterText(city, "chennai");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final Finder DOB = find.byKey(Key("dobTextField"));
    await tester.enterText(DOB, "25-02-99");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final submit = find.byKey(ValueKey("submitButton"));
    await tester.tap(submit);
    await tester.pumpAndSettle();

    await tester.pump(const Duration(milliseconds: 400)); // add delay
    await tester.pumpAndSettle();

    expect(find.text("Please enter your current residing Country"),
        findsOneWidget);
  });

  testWidgets("Match testing: to verify Data Processing",
      (WidgetTester tester) async {
    await tester.pumpWidget(app.MyApp());
    // WidgetsFlutterBinding.ensureInitialized();
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 5));

    final Finder firstName = find.byKey(Key("firstNameTextField"));
    await Future.delayed(const Duration(seconds: 7));
    await tester.enterText(firstName, 'chandan');
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    final Finder lastName = find.byKey(Key("lastNameTextField"));
    await tester.enterText(lastName, "Rout");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    final Finder email = find.byKey(Key("emailTextField"));
    await tester.enterText(email, "chandan@gmail.com");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 4));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final Finder phone = find.byKey(Key("phoneNumberTextField"));
    await tester.enterText(phone, "1234567890");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pump(new Duration(seconds: 10));

    final Finder CompanyName = find.byKey(Key("currentCompanyTextField"));
    await tester.enterText(CompanyName, "MYCompany");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final Finder city = find.byKey(Key("cityTextField"));
    await tester.enterText(city, "chennai");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 7));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 7));

    final Finder Country = find.byKey(ValueKey("countryTextField"));
    await tester.enterText(Country, "india");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 7));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 7));

    final Finder DOB = find.byKey(Key("dobTextField"));
    await tester.enterText(DOB, "25-02-99");
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 10));

    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    await tester.pump(new Duration(seconds: 10));

    final submit = find.byKey(ValueKey("submitButton"));
    await tester.tap(submit);
    await tester.pumpAndSettle();

    await tester.pump(const Duration(milliseconds: 400)); // add delay
    await tester.pumpAndSettle();

    expect(find.text('Data is in processing.'), findsOneWidget);
  });
}
