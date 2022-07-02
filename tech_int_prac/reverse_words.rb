# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

# function takes in a string of words seperated by spaces
# returns those same words seperated by spaces in reverse order
# new_string is empty array -- join when returning to make it a string
# iterate through the first string, and split everything that is seperated by " "


def reverse_words(string)
  new_string_arr = string.split
  new_string = new_string_arr.reverse 
  p new_string.join(" ")
end

reverse_words("well that took a few minutes")