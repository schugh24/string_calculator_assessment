int add(String input) {
  // if empty string, return 0
  if (input.isEmpty) return 0;
  
  var (numbersSection, delimiterList) = _extractDelimiters(input);

  final delimiterPattern = RegExp(delimiterList.map(RegExp.escape).join('|'));
  final numberStrings =
      numbersSection.split(delimiterPattern).where((s) => s.isNotEmpty);

  return numberStrings.map(int.parse).fold(0, (a, b) => a + b);
}


// Default delimiters: comma (",") and newline ("\n").
// If input starts with "//", parse custom delimiters from header with pattern //[delimiter]\n[numbers…].
(String, List<String>) _extractDelimiters(String input) {
  var delimiterList = <String>[',', '\n'];
  var numbersSection = input;

  if (input.startsWith('//')) {
    final newlineIndex = input.indexOf('\n');
    final delimiterDefinition = input.substring(2, newlineIndex);
    numbersSection = input.substring(newlineIndex + 1);
    delimiterList = [delimiterDefinition, '\n'];
  }

  return (numbersSection, delimiterList);
}