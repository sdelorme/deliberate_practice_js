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
  let duplicates = {};
  let result = [];
  for (let i = 0; i < nums.length; i++) {
    if (duplicates[nums[i]] === nums[i]) {
      continue;
    } else {
      duplicates[nums[i]] = nums[i];
      result.push(nums[i]);
    }
    console.log(duplicates, result);
  }
  let k = result.length;
  return k;
};

console.log(removeDuplicates([1,1,2]));