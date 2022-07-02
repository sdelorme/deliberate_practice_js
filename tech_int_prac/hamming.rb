# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0


# function takes in two equal size strings
# create a counter variable to count different chars
# ensure that each char is being counted as downcase/upcase
# create empty hash that stores all chars after iterating through the first string
# use each loop 
# conditional -- if key exists, skip it, if not make this character the key
# then iterate through the second string
# if key exists, no action, if it doesn't counter +=1
# return the counter

def count_diff_char(s1, s2)
  character_reference_hash = {}
  counter = 0
  s1 = s1.downcase
  s2 = s2.downcase
  s1.each_char do |char|
    if character_reference_hash[char]
      false
    else
      character_reference_hash[char] = char
    end
  end
  s2.each_char do |char|
    if character_reference_hash[char] == char
      false
    else
      counter += 1
    end
  end
  p counter
end

count_diff_char("ABCDefg", "ABCXEOG")