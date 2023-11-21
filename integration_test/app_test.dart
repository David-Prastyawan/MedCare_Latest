import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:medcare/view/home_page.dart';
import 'package:medcare/view/login.dart';
import 'package:medcare/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'Testing login-logout',
    () {
      testWidgets(
        'verify login and logout function',
        (tester) async {
          app.main();
          await tester.pumpAndSettle();

          await tester.pumpAndSettle();

          await tester.enterText(
              find.byType(TextFormField).at(0), 'David123@gmail.com');
          await Future.delayed(const Duration(seconds: 2));

          await tester.enterText(find.byType(TextFormField).at(1), 'David1234');
          await tester.pumpAndSettle();
          await Future.delayed(const Duration(seconds: 2));

          await tester.tap(find.byType(ElevatedButton));
          await Future.delayed(const Duration(seconds: 4));
          await tester.pumpAndSettle();

          // await Future.delayed(const Duration(seconds: 2));
          // expect(find.byType(HomePage), findsOneWidget);
          // expect(find.byType(Theme), findsOneWidget);

          await tester.tap(find.text('+Add'));
          await tester.pumpAndSettle();
          await Future.delayed(const Duration(seconds: 2));

          await tester.tap(find.text('Logout'));
          await tester.pumpAndSettle();
          await Future.delayed(const Duration(seconds: 2));

          // expect(find.text('Invalid username or password'), findsOneWidget);
          // expect(find.byType(Login), findsOneWidget);
          // expect(find.byType(TextFormField), findsAtLeastNWidgets(2));
          // Example: Verify that the 'Register' text button is present
          // expect(find.text('Register'), findsOneWidget);
          // expect(find.byType(ElevatedButton), findsOneWidget);

          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
          await Future.delayed(const Duration(seconds: 2));

          expect(find.text("Login"), findsNWidgets(2));
          await tester.pumpAndSettle();
        },
      );
    },
  );
}
