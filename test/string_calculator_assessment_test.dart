import 'package:test/test.dart';
import 'package:string_calculator_assessment/src/string_calculator_assessment.dart';

void main() {
  group('String Calculator', () {
    test('empty string -> 0', () {
      expect(add(''), 0);
    });
    test('single number', () {
    expect(add('1'), 1);
  });
  });
}
