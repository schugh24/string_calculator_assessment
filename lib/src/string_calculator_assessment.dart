int add(String input) {
  // if empty string, return 0
  if (input.isEmpty) return 0;
  // if only one number, return it
  if (!input.contains(',')) {
    return int.parse(input);
  }
  return 0;
}