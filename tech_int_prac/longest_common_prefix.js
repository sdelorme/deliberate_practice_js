// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".

 

// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.


// function takes in an array of strings
// store the value of the first element in the array in a variable
// check the entire value, if not, check the value with one less char and continue to decrement
// move on to the next element in the array and repeat with the new value


// return "" if strs.length == 0
//   prefix = ""
//   first = strs[0]
//   for i in 0..first.length-1
//     if strs.all?{|x| x[i] == first[i]}
//       prefix += first[i]
//     else
//       break
//     end
//   end
//   prefix


var longestCommonPrefix = function(strs) {
  let longestPrefix = strs[0];
  for (let i = 1; i < strs.length; i++) {
    while (strs[i].indexOf(longestPrefix) !== 0) {
      longestPrefix = longestPrefix.slice(0, longestPrefix.length - 1);
    }
  }
  return longestPrefix;
};

console.log(longestCommonPrefix(["flower", "flowers", "flight"]));

// i = 0 currentChar = y longestPrefix = yes
// i = 1