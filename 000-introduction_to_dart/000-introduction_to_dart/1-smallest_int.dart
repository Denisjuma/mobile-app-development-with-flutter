void main() {
  List<int> myList = [10, 23, 57, 11, 88, 100];

  int myValue = getSmallestInteger(myList);

  print('The smallest value in the list is $myValue');
}

int getSmallestInteger(List<int> myList) {
  return myList.reduce((value, element) => value < element ? value : element);
}
