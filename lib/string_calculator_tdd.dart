int add(String numbers) {
  if (numbers.isEmpty) return 0;

  final parts = numbers.split(',');
  if (parts.length == 1) {
    return int.parse(parts[0]);
  }
  
  int sum = 0;
  for (var i in parts) {
    sum += int.parse(i);
  }
  return sum;
}
