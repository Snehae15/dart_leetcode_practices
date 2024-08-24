class Solution {
  bool isPalindrome(int x) {
  String original = x.toString();
  String reversed = original.split('').reversed.join('');
  return original == reversed;
    }
}
