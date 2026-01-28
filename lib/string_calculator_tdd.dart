int add(String numbers) {
  if (numbers.isEmpty) return 0;

  final parts = numbers.replaceAll('\n', ',').split(',');
  int sum = 0;

  for (final part in parts) {
    sum += int.parse(part);
  }

  return sum;
}
