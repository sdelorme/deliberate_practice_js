# Implement strStr().

# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Clarification:

# What should we return when needle is an empty string? This is a great question to ask during an interview.

# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

 

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
 

# Constraints:

# 1 <= haystack.length, needle.length <= 104
# haystack and needle consist of only lowercase English characters.

# @param {String} haystack
# @param {String} needle
# @return {Integer}
# 

# my first attempt
# def str_str(haystack, needle)
#   return 0 if needle.empty?
#   i = 0
#   if haystack.include? needle
#     i = haystack.index(needle[0])
#   else
#     i = -1
#   end
#   i 
#   p i
# end


def str_str(haystack, needle)
  return 0 if needle.empty?
  needle_length = needle.length
  str_length = haystack.length
  
  left = 0
  right = needle_length - 1
  
  while right < str_length
    return left if haystack[left..right] == needle
    left += 1
    right += 1
  end
  return -1
end

str_str("mississippi", "issip")
str_str("mississippi", "issip")
