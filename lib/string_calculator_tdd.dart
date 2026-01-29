int add(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiter = ',';

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

  final parts = numbers.replaceAll('\n', delimiter).split(delimiter);
  int sum = 0;
  final negatives = <int>[];
  for (final part in parts) {
    int curr = int.parse(part);
    if (curr < 0) negatives.add(curr);
    if (curr <= 1000) {
      sum += int.parse(part);
    }
  }
  if (negatives.isNotEmpty) {
    throw UnimplementedError('Negatives not allowed ie ${negatives.join(',')}');
  }

  return sum;
}
