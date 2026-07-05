class Solution {
  List<int> plusOne(List<int> digits) {
    int carry = 0;
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] != 9) {
        carry = 0;
        digits[i] += 1;
        return digits;
      } else {
        digits[i] = 0;
        carry = 1;
      }
    }
    if (carry == 1) {
      digits.insert(0, 1);
      return digits;
    }
    return digits;
  }
}
