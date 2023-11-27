void main() {
  int number = 874;
  String romanNumber = intToRoman(number);

  print("Roman numeral for $number is: $romanNumber");
}

String intToRoman(int number) {
  const List<String> romanSymbols = [
    'I',
    'IV',
    'V',
    'IX',
    'X',
    'XL',
    'L',
    'XC',
    'C',
    'CD',
    'D',
    'CM',
    'M'
  ];
  const List<int> romanValues = [
    1,
    4,
    5,
    9,
    10,
    40,
    50,
    90,
    100,
    400,
    500,
    900,
    1000
  ];

  String result = "";
  int i = romanValues.length - 1;

  while (number > 0 && i >= 0) {
    if (number >= romanValues[i]) {
      result += romanSymbols[i];
      number -= romanValues[i];
    } else {
      i--;
    }
  }
  return result;
}
