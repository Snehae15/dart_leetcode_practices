class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    for (int i = 0; i < strs[0].length; i++) {
      for (int j = 1; j < strs.length; j++) {
        if (strs[j].length <= i || strs[j][i] != strs[0][i]) {
          return strs[0].substring(0, i);
        }
      }
    }
  }
}
