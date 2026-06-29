class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> isExist = {};
    for (int i = 0; i < nums.length; i++) {
      int current = nums[i];
      int second_number = target - current;
      if (isExist.containsKey(second_number)) {
        return [isExist[second_number]!, i];
      }
      isExist[current] = i;
    }
    return [];
  }
}
