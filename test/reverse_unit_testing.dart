import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/main.dart';

void main() {
  test("Unit testing for reverse string", () async {
    String initial = "Hello";
    String reversed = reverseString(initial);
    expect(reversed, "olleH");
  });
}
