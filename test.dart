class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> parentheses = {
      '(': ')',
      '{': '}',
      '[': ']',
    };
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (parentheses.containsKey(char)) {
        stack.add(char);
      } else if (stack.isEmpty) {
        return false;
      } else {
        String lastOne = stack.removeLast();
        if (parentheses[lastOne] != char) {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}
