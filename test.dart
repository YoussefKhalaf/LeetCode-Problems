class Solution {
  int lengthOfLastWord(String s) {
    int index = 0;
    s = s.trim();
    for (int i = 0; i < s.length; i++) {
      if (s[i] == " ") {
        index = i;
      }
    }
    if (index == 0) {
      return s.length;
    }
    String res = s.substring(index + 1, s.length);
    return res.length;
  }
}
