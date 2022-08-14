

// import 'package:flutter_driver/flutter_driver.dart';
// import 'package:flutter_test/flutter_test.dart';


// void main() {
//   group('matchX testing', () {
//     // var firstName = find.byValueKey('firstNameTextField');
//     // var lastName = find.byValueKey('lastNameTextField');
//     // var email = find.byValueKey('emailTextField');
//     // var phone = find.byValueKey('phoneNumberTextField');
//     // var CompanyName = find.byValueKey("currentCompanyTextField");
//     // var city = find.byValueKey("cityTextField");
//     // var DOB = find.byValueKey("dobTextField");
//     // var submit = find.byValueKey("submitButton");

//     FlutterDriver driver;

//     setUpAll(() async {
//       driver = await FlutterDriver.connect();
//       await driver.waitUntilFirstFrameRasterized();
//     });

//     tearDown(() async {
//       if (driver != null) {
//         driver.close();
//       }
//     });

//     test("to verify Please enter your current residing City", () async {
//       // Enter First Name
//       await driver.tap(firstName);
//       await driver.enterText("chandan");
//       await driver.waitFor(lastName);
//       await driver.tap(lastName);
//       await driver.enterText("Rout");

// // Enter Last email
//       await driver.tap(email);
//       await driver.enterText("chandan@gmail.com");

//       // Enter Last Phone
//       await driver.tap(phone);
//       await driver.enterText("9938182217");

//       // Enter Last CompanyName
//       await driver.tap(CompanyName);
//       await driver.enterText("MyCompany");
//       await driver.waitFor(find.byValueKey("cityTextField"));

//       await driver.scroll(find.byValueKey(find.byValueKey("cityTextField")), 0,
//           -3000, Duration(seconds: 5));

//       // Enter Last city
//       await driver.tap(city);
//       await driver.enterText("Chennai");
//       await driver.waitFor(city);

//       await driver.tap(find.byValueKey('cityTextField'));
//       // await driver.scroll(
//       //     find.byValueKey('cityTextField'), 0, 3000, Duration(milliseconds: 5));

//       await driver.tap(DOB);
//       await driver.enterText("25Feb");
//     });
//   });
// }
