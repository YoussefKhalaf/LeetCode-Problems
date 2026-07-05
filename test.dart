class Solution {
  int strStr(String haystack, String needle) {
    if (needle.length > haystack.length || !haystack.contains(needle)) {
      return -1;
    }
    for (int i = 0; i <= haystack.length - needle.length; i++) {
      if (haystack.substring(i, i + needle.length) == needle) {
        return i;
      }
    }
    return -1;
  }
}
