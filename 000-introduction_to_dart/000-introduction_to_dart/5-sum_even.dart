void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  int sum = sumOfEvenNumbers(numbers);

  print('The sum of all even number in the list is $sum');
}

int sumOfEvenNumbers(List<int> numbers) {
  return numbers
      .where((numbers) => numbers % 2 == 0)
      .reduce((sum, element) => sum + element);
}
