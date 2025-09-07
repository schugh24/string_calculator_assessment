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

    test('unknown amount of numbers comma separated -> sum all', () {
      expect(add('1,2,3,4'), 10);
    });

    test('allows newline as delimiter with commas', () {
      expect(add('1\n2,3'), 6);
    });

    test('supports custom single delimiter via pattern //[delimiter]\n[numbers…]', () {
      expect(add('//;\n1;2'), 3);
    });

    test('throws exception on single negative with its value', () {
      expect(
        () => add('-2'),
        throwsA(predicate((e) =>
            e is FormatException &&
            e.message == 'negatives not allowed -2')),
      );
    });

    test('throws exception on multiple negatives with all values comma separated', () {
      expect(
        () => add('2,-4,3,-5'),
        throwsA(predicate((e) =>
            e is FormatException &&
            e.message == 'negatives not allowed -4,-5')),
      );
    });

    test('ignores numbers greater than 1000', () {
      expect(add('2,1001,6'), 8);
    });

    test('supports single custom delimiter of any length with //[...]', () {
      expect(add('//[***]\n1***2***3'), 6);
    });
    test('supports multiple single character custom delimiters', () {
      expect(add('//[*][%]\n1*2%3'), 6);
    });
  });
}
