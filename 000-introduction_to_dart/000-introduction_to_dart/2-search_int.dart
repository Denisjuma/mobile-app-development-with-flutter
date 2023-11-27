void main() {
     List<int> myList = [1, 2, 3, 4, 5, 6, 7, 8, 8, 9];
     int searchValue = 3;
     int indexValue = findIndexOfFirstOccurrence(myList, searchValue);

      if (indexValue != -1) {
         print('The index of $searchValue is $indexValue');
      } 
      else {
        print(' $searchValue is not found in the list');
     }
}

    int findIndexOfFirstOccurrence(List<int> myList, int target) {
          return myList.indexOf(target);
    }
