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

    test('two numbers comma-separated -> sum', () {
      expect(add('1,2'), 3);
    });
  });

    test('unknown amount of numbers comma separated -> sum all', () {
      expect(add('1,2,3,4'), 10);
    });

    test('allows newline as delimiter with commas', () {
      expect(add('1\n2,3'), 6);
    });
}
