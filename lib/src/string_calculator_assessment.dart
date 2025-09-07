int add(String input) {
  // if empty string, return 0
  if (input.isEmpty) return 0;
  // if only one number, return it
  if (!input.contains(',')) {
    return int.parse(input);
  }
  final parts = input.split(',');
  return parts.map(int.parse).fold(0, (a, b) => a + b);
}