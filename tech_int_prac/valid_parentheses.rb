# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
 

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false
 

# Constraints:

# 1 <= s.length <= 104
# s consists of parentheses only '()[]{}'


def is_valid(s)
  return true if s.empty?
  valid_pairs = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }
  test_stack = []
  s.each_char do |char|
    if valid_pairs.key? (char)
      test_stack << char
    elsif valid_pairs[test_stack.last] == char
      test_stack.pop
    else
      return false
      break
    end
  end
  test_stack.empty?
end

is_valid("]")
