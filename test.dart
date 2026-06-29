class Solution {
  int romanToInt(String s) {
    int sum = 0;
    Map<String, int> roman_numerals = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };
    for (int i = 0; i < s.length; i++) {
      int current = roman_numerals[s[i]]!;
      if (i < s.length - 1) {
        int next = roman_numerals[s[i + 1]]!;
        if (current < next) {
          sum -= current;
        } else {
          sum += current;
        }
      } else {
        sum += roman_numerals[s[i]]!;
      }
    }
    return sum;
  }
}
