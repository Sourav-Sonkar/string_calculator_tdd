import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
  test('return 0 when input is empty string', () {
    // Given
    final String input = '';

    // When
    final result = add(input);

    // Then
    expect(result, 0);
  });

  test('return number for single input', () {
    // Given
    final String input = '1';

    // When
    final result = add(input);

    // Then
    expect(result, 1);
  });

  test('return sum of two numbers separated by comma', (){
    // Given
    final String input = '1,5';

    // When
    final result = add(input);

    // Then
    expect(result, 6);
  });

  test('return sum of multiple numbers separated by comma', (){
    // Given
    final String input = '1,2,5';

    // When
    final result = add(input);

    // Then
    expect(result, 8);
  });

  test('add numbers separated by newlines', (){
    // Given
    final String input = '1\n2,5';

    // When
    final result = add(input);

    // Then
    expect(result, 8);
  });


}
