/*14. Longest Common Prefix

Companies
Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".


Example 1:
Input: strs = ["flower","flow","flight"]
Output: "fl"

Example 2:
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
 
Constraints:

1 <= strs.length <= 200
0 <= strs[i].length <= 200
strs[i] consists of only lowercase English letters.*/

// class Solution {
//   String longestCommonPrefix(List<String> strs) {
//     if (strs.isEmpty) return "";

//     for (int i = 0; i < strs[0].length; i++) {
//       for (int j = 1; j < strs.length; j++) {
//         if (strs[j].length <= i || strs[j][i] != strs[0][i]) {
//           return strs[0].substring(0, i);
//         }
//       }
//     }
//   }
// }

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    for (int i = 0; i < strs[0].length; i++) {
      for (int j = 1; j < strs.length; j++) {
        // Check if the current character does not match or if we've reached the end of any string
        if (strs[j].length <= i || strs[j][i] != strs[0][i]) {
          return strs[0].substring(0, i);
        }
      }
    }

    // If no mismatch was found, the entire first string is the common prefix
    return strs[0];
  }
}
