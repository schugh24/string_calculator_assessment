int add(String input) {
  // if empty string, return 0
  if (input.isEmpty) return 0;
  // if only one number, return it
  if (!input.contains(',')) {
    return int.parse(input);
  }
  final parts = input.split(',');
  if (parts.length == 2) {
    return int.parse(parts[0]) + int.parse(parts[1]);
  }

  // more than 2 not handled yet; coming next step
  return 0;
}