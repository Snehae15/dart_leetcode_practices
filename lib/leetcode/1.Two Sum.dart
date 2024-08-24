class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int n = numbers.length;

    for (var i = 0; i < n - 1; i++) {
      // for loop for keep tracking the second value inside the list
      for (var j = i + 1; j < n; j++) {
        // first of any value inside the list and second inside the
        // list should be equal to target
        if (numbers[i] + numbers[j] == target) {
          // return the list of first value and second
          return [i, j];
        }
      }
    }

    return [];
  }
}
