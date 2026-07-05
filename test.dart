class Solution {
  int lengthOfLastWord(String s) {
    s = s.trim();
    List<String> words = s.split(" ");
    return words[words.length - 1].length;
  }
}
