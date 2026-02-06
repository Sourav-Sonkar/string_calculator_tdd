int operation(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiter = ',';

  (numbers, delimiter) = extractDelimiter(numbers, delimiter);

  final parts = numbers.replaceAll('\n', delimiter).split(delimiter);
  int sum = 0;
  int product = 1;
  bool shouldMultiply = delimiter == '*';

  final negatives = <int>[];
  for (final part in parts) {
    int curr = int.parse(part);
    if (curr < 0) negatives.add(curr);
    if (curr <= 1000) {
      if (shouldMultiply) {
        product *= int.parse(part);
      } else {
        sum += int.parse(part);
      }
    }
  }
  if (negatives.isNotEmpty) {
    throw UnimplementedError('Negatives not allowed ie ${negatives.join(',')}');
  }

  return shouldMultiply ? product : sum;
}

(String numbers, String delimiter) extractDelimiter(
  String numbers,
  String delimiter,
) {
  if (numbers.startsWith('//')) {
    final split = numbers.split('\n');
    final delimiterPart = split.first.substring(2);
    if (delimiterPart.startsWith('[') && delimiterPart.endsWith(']')) {
      delimiter = delimiterPart.substring(1, delimiterPart.length - 1);
    } else {
      delimiter = delimiterPart;
    }
    numbers = split.last;
  }

  return (numbers, delimiter);
}
