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
  final negatives = <int>[];
  for (final part in parts) {
    int curr = int.parse(part);
    if (curr < 0) negatives.add(curr);
    if(curr<=1000) {
      sum += int.parse(part);
    }
  }
  if (negatives.isNotEmpty) {
    throw UnimplementedError('Negatives not allowed ie ${negatives.join(',')}');
  }

  return sum;
}
