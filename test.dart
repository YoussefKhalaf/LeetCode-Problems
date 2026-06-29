class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }
    int reversed = 0;
    int number = x;
    while (number > 0) {
      int digit = number % 10;
      reversed = reversed * 10 + digit;
      number ~/= 10;
    }
    if (x == reversed) {
      return true;
    } else {
      return false;
    }
  }
}
