class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> unique = [];
    int k = 0;
    for (int i = 0; i < nums.length; i++) {
      if (!unique.contains(nums[i])) {
        unique.add(nums[i]);
        k++;
      }
    }
    for (int i = 0; i < k; i++) {
      nums[i] = unique[i];
    }
    return k;
  }
}
