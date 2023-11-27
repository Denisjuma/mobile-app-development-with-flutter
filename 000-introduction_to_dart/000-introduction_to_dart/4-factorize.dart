void main() {
  int number = 25;
  List<int> primeFactors = factorizeToPprimeNumbers(number);

  print("prime factors of $number are: $primeFactors");
}

List<int> factorizeToPprimeNumbers(int number) {
  List<int> primeFactors = [];

  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      primeFactors.add(i);
      number = number ~/ i;
    }
  }
  return primeFactors;
}
