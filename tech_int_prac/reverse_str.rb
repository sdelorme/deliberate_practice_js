# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.

 

# Example 1:

# Input: s = ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# Example 2:

# Input: s = ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]
 

# Constraints:

# 1 <= s.length <= 105
# s[i] is a printable ascii character.

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
# def reverse_string(s)
#   i = 0
#   j = s.length - 1
#   until i >= j
#     s[i], s[j] = s[j], s[i]
#     j -= 1
#     i += 1
#   end
#   s
# end

# reverse_string(["h","e","l","l","o"])
#                 # i                j
#                 #       i       j


def reverse_string(s)
  i = 0
  j = s.length - 1
  until i >= j
    s[i], s[j] = s[j], s[i]
    j -= 1
    i += 1
  end
  p s
end

reverse_string("What is eating Gilbert Grape")