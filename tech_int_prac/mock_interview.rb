# str -- gives count
# when given a string return the number of each character

# create a function that takes in str

# create an empty hash (with default value of 0)

# iterate through each character in the string and if it isn't a key in the hash -- add it to the hash as a downcase, if it is already a key would add 1 to the value of that key (when checking the char, check it as downcase)

# return the hash (if empty return empty hash)

# # input "apple"
# # output {
#   a => 1,
#   p => 2,
#   l => 1,
#   e => 1
# }

# # input "BaNanA"
# # output {
#   b => 1,
#   a => 3,
#   n => 2
# } 
# # input "hi!"
# # output {
#   h => 1,
#   i => 3,
#   ! => 1
# }

def character_count(str)
  # make the default value for each key
  str = str.downcase
  character_hash = {}
  str.each_char do |char|
    if character_hash[char]
      character_hash[char] += 1
    else
      character_hash[char] = 1
    end
  end
  p character_hash
end

# character_count("apple")
character_count("hi!92")