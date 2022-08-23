// def remove_duplicates(nums)
//   duplicate_hash = {}
//   new_arr = []
//   nums.each do |num|
//     if duplicate_hash[num] == num
//       false
//     else
//       duplicate_hash[num] = num
//       new_arr << num
//     end
//   end
//   k = new_arr.length
//   k
//   # p new_arr
//   # p duplicate_hash
//   # p k
// end

// remove_duplicates([0,0,1,1,1,2,2,3,3,4])


var removeDuplicates = function(nums) {
  let i = 0;
  for (let j = 1; j < nums.length; j++) {
    if (nums[j] !== nums[i]) {
      nums[++i] = nums[j];
    }
  }
  return ++i;
};

// [0,0,1,1,1,2,2,3,3,4]
// numsi = 0 [0]
// numsj = 0 [1]

// [0,1,1,1,1,2,2,3,3,4]
// numsi = 0 [1]
// numsj = 1 [2]

// [0,1,1,1,1,2,2,3,3,4]
// numsi = 1 [1]
// numsj = 1 [3]

// [0,1,1,1,1,2,2,3,3,4]
// numsi = 1 [1]
// numsj = 1 [4]

// [0,1,2,1,1,2,2,3,3,4]
//            ^ 
// numsi = 1 [2]
// numsj = 2 [5]

// [0,1,2,1,1,2,2,3,3,4]
//              ^ 
// numsi = 2 [2]
// numsj = 2 [6]

// [0,1,2,3,1,2,2,3,3,4]
//                ^ 
// numsi = 2 [3]
// numsj = 3 [7]

// [0,1,2,3,1,2,2,3,3,4]
//                  ^ 
// numsi = 3 [3]
// numsj = 3 [8]

// [0,1,2,3,4,2,2,3,3,4]
//                    ^ 
// numsi = 3 [4]
// numsj = 4 [9]

// return ++i = 5