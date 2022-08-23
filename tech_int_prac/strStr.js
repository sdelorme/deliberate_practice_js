// def str_str(haystack, needle)
//   return 0 if needle.empty?
//   needle_length = needle.length
//   str_length = haystack.length
  
//   left = 0
//   right = needle_length - 1
  
//   while right < str_length
//     return left if haystack[left..right] == needle
//     left += 1
//     right += 1
//   end
//   return -1
// end

// create empty object

// need two iterators one for needle and the other for haystack

// store all chars of needle in the object with their corresponding indencies

// iterate through the haystack checking the value of each of the needle's chars in the object

// if it matches, increment to the next character in the object

// if needle is empty? return the index 

// // Input: haystack = "hello", needle = "ll"
// // Output: 2

// hello
// ll
// {}

// hello
//    ^
// ll
//  ^
// {}




var strStr = function(haystack, needle) {
  if (needle.length === 0) {
    return 0;
  }
  for (let i = 0; i <= haystack.length - needle.length; i++) {
    if (needle === haystack.slice(i, i + needle.length)) {
      return i;
    }
  }
  return -1;
};

console.log(strStr("alphabet", "ll"));