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
}
