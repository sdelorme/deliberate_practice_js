# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”
# Input: “abcDefghHijkkloooop”
# Output: “h”
# Input: "”
# Output: “”
# Input: "867530991”
# Output: “9”

# write function to take in a str
# create a variable to store each char in lower case form in the string as it is iterated
# use each loop to iterate
# break out to stop the loop
# conditional --> if variable is the same as char return char

# edge case --> mix of upper and lower case
# numbers, 

def first_duplicate(str)
  duplicate = ""
  str.each_char do |char|
    if char.downcase == duplicate
      break
    else
      duplicate = char.downcase
    end
  end
  p duplicate
end

first_duplicate("abcdefghhijkkloooop")
first_duplicate("abcDefghHijkkloooop")
first_duplicate("")
first_duplicate("867530991")