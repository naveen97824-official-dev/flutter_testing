import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("flutter reverse string app", () {
    FlutterDriver? driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDown(() async {
      if (driver != null) {}
    });
    var textField = find.byType("TextField");
    var button = find.text("Reverse");
    var result = find.text("dlrow");
    test("reverse function user testing", () async {
      await driver!.tap(textField);
      Future.delayed(Duration(seconds: 3));
      await driver!.enterText("world");
      Future.delayed(Duration(seconds: 3));
      await driver!.waitForAbsent(result);
      Future.delayed(Duration(seconds: 3));
      await driver!.tap(button);
      await driver!.waitFor(result);
      Future.delayed(Duration(seconds: 3));
      await driver!.waitUntilNoTransientCallbacks();
      await driver!.close();
    });
  });
}
