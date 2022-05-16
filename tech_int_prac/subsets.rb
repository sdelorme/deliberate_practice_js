# Given an integer array nums of unique elements, return all possible subsets (the power set).

# The solution set must not contain duplicate subsets. Return the solution in any order.

 

# Example 1:

# Input: nums = [1,2,3]
# Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
# Example 2:

# Input: nums = [0]
# Output: [[],[0]]
 

# Constraints:

# 1 <= nums.length <= 10
# -10 <= nums[i] <= 10
# All the numbers of nums are unique.
# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  ans = []
  (0..nums.length).each do |num|
    ans += nums.combination(num).to_a
  end
  ans
end

#create empty hash to store subsets
#return an empty array as subset automatically
#iterate through array, add first element to hash
#for arr.length hash.values[0] + hash[num]

