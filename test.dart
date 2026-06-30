class Solution {
  String longestCommonPrefix(List<String> strs) {
    String commonPrefix = strs[0];
    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(commonPrefix)) {
        commonPrefix = commonPrefix.substring(0, commonPrefix.length - 1);
        if (commonPrefix.isEmpty) return "";
      }
    }
    return commonPrefix;
  }
}
