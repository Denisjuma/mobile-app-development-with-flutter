import 'dart:io';
void main() {
  printRightAngleTriangle(5);
}
//print Righr Angle Triangle Function.
void printRightAngleTriangle(int height) {
  for (int i = 1; i <= height; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
}
