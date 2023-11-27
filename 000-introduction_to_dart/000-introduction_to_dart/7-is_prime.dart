import 'dart:math';
void main() {
  var number = 9;

  bool result = isPrime(number);

  if (result) {
    print('$number is a prime number');
  } else {
    print('$number is not a prime number');
  }
}

bool isPrime(int number) {
  if (number < 1) {
    return false;
  }

  for (int i = 2; i < sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
