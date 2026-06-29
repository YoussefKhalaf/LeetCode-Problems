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
      if (i == s.length - 1) {
        sum += roman_numerals[s[i]]!;
        break;
      }
      String str = s[i] + s[i + 1];
      if (str == "IV") {
        sum += 4;
        i++;
      } else if (str == "IX") {
        sum += 9;
        i++;
      } else if (str == "XL") {
        sum += 40;
        i++;
      } else if (str == "XC") {
        sum += 90;
        i++;
      } else if (str == "CD") {
        sum += 400;
        i++;
      } else if (str == "CM") {
        sum += 900;
        i++;
      } else {
        sum += roman_numerals[s[i]]!;
      }
    }
    return sum;
  }
}
