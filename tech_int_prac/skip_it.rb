# Given an array of numbers, write a function that returns a new array in which only select numbers from the original array are included, based on the following details:

# The new array should always start with the first number from the original array. The next number that should be included depends on what the first number is. The first number dictates how many spaces to the right the computer should move to pick the next number. For example, if the first number is 2, then the next number that the computer should select would be two spaces to the right. This number gets added to the new array. If this next number happens to be a 4, then the next number after that is the one four spaces to the right. And so on and so forth until the end of the array is reached.

# Input:
                                                  #  v
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 2, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 2, 2]

# edge case input
# [2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 3, 1, 2]

# Output:
# [2, 3, 1, 2, 2, 1, 5, 3]

# create a function that takes in an array
# the function creates a new array with a few parameters
# new_arr[0] = arr[0]
# the next number is arr[0] indeces to the right in the first array
# this pattern continues until the end of the first array

# edge case -- what if the spaces to move is more than elements we have left?\

def skip_it(arr)
  new_arr = []
  i = 0
  while i < arr.length
    new_arr << arr[i]
    i += arr[i]
  end
  new_arr
end

skip_it([2, 1, 3, 2, 5, 1, 2, 6, 2, 7, 1, 5, 6, 3, 2, 6, 3, 1, 2])