void main() {
  String stringInput = "Hello , World";
  Map<String, int> charFrequency = characterFrequency(stringInput);

  print("character frequencies: $charFrequency");
}

Map<String, int> characterFrequency(String stringInput) {
  Map<String, int> charFrequency = {};

  for (int i = 0; i < stringInput.length; i++) {
    String currentChar = stringInput[i].toLowerCase();

    //ignore non-alphabetic characters
    if (currentChar.contains(RegExp(r'[a-z]'))) {
      charFrequency[currentChar] = charFrequency[currentChar] != null
          ? charFrequency[currentChar]! + 1
          : 1;
    }
  }
  return charFrequency;
}
