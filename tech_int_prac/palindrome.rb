# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# input: "dad"
# output: "true"

# Input: “baloney”
# Output: false

# write a function called palindrome_check that takes in str
# use built in reverse method from ruby 

# def palindrome_check(str)
#   if str == str.reverse
#     p true
#   end
# end

# write a function called palindrome_check that takes in str
# create twp variables left and right 
# conditional until left > right
# if str left == str right return true
# else false\

def palindrome_check(str)
  left = 0
  right = str.length-1
  status = false
  while left < right
    if str[left].downcase == str[right].downcase
      status = true
    end
    left += 1
    right -= 1
  end
  p status
end

palindrome_check("dad")
palindrome_check("Dad")
palindrome_check("baloney")
palindrome_check("RaceCar")
