# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

# function takes in a string
# create $ variable called money
# use an each loop with condtional to check for dollar sign
# if found, break the loop and return true, false if not

def money(str)
  money = "$"
  status = false
  str.each_char do |char|
    if char == money
      status = true
      break
    end
  end
  status
end

money("abcdefghijklmnopqrstuvwxyz")