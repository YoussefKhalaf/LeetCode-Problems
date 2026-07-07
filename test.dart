class Solution {
  String addBinary(String a, String b) {
    String carry = "0";
    String result = "";
    int length = a.length > b.length ? a.length : b.length;
    if (b.length > a.length) {
      a = a.padLeft(length, '0');
    } else if (a.length > b.length) {
      b = b.padLeft(length, '0');
    }
    print(a);
    print(b);
    for (int i = length - 1; i >= 0; i--) {
      if (a[i] == '1' && b[i] == '1') {
        if (carry == '0') {
          result += "0";
          carry = '1';
        } else if (carry == '1') {
          result += "1";
          carry = '1';
        }
      } else if (a[i] == '0' && b[i] == '0') {
        if (carry == '0') {
          result += "0";
          carry = '0';
        } else if (carry == '1') {
          result += "1";
          carry = '0';
        }
      } else {
        if (carry == '0') {
          result += "1";
          carry = '0';
        } else if (carry == '1') {
          result += "0";
          carry = '1';
        }
      }
    }
    if (carry == '1') {
      result += "1";
    }
    return (result.split('').reversed.join());
  }
}
