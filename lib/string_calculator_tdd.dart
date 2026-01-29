int add(String numbers) {
  if (numbers.isEmpty) return 0;
  String delimiter = ',';

  if (numbers.startsWith('//')) {
    final split = numbers.split('\n');
    delimiter = split.first.substring(2);
    numbers = split.last;
  }

  final parts = numbers.replaceAll('\n', delimiter).split(delimiter);
  int sum = 0;

  for (final part in parts) {
    int curr = int.parse(part);
    if (curr < 0) throw UnsupportedError('Negatives not allowed');
    sum += int.parse(part);
  }

  return sum;
}
