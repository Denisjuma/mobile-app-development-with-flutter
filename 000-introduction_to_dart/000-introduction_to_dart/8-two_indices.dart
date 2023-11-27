void main() {
  List<int> numbers = [4, 10, 11, 23];
  int target = 14;

  List<int> results = findTwoNumbersWithSum(numbers, target);

  if (results.isNotEmpty) {
    print('Indices with the target sum $target are: $results');
  } else {
    print('No indices found with the target sum $target');
  }
}

List<int> findTwoNumbersWithSum(List<int> myList, int target) {
  Map<int, int> complementMap = {};
  List<int> result = [];

  myList.asMap().forEach((index,int element) =>
      complementMap.containsKey(target - element)
          ? result = [complementMap[target - element]!, index]
          : complementMap[element] = index);
  return result;
}
