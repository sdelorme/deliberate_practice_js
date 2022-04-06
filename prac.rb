# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

#iterate through the array
#multiply by 2
#add to new array
#return said array
# arr = [4, 2, 5, 99, -4]
# def double_array(arr)
#   new_arr = []
#   arr.each do |num|
#     new_arr << num * 2
#   end
#   return new_arr
# end

# p double_array([4, 2, 5, 99, -4])

# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”
# string = "hello, how are your porcupines today?"
# def every_other(string)
#   new_string = ""
#   i = 1
#   while i < string.length
#     string[i] = string[i].upcase
#     i += 2
#   end
#   return string
# end

# puts every_other(string)

# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)


# write a function that accepts a single integer
# have an array 0 and 1
# formula for fibonacci
# add arr[-1] 
# add to the array you already have
# stop whren we hit the index from input integer 
# return the value that we stopped on

# def fib_index(integer)
#   arr = [0,1]
#   while arr.length < integer
#     arr << arr[-1] + arr [-2]
#   end
#   return arr[-1]
# end

# puts fib_index(10)

# Write a function that returns the sum of all numbers in a given array.

# NOTE: Do not use any built-in language functions that do this automatically for you.

# Input: [1, 2, 3, 4]
# Output: 10

# Explanation: (1 + 2 + 3 + 4) = 10
# arr = [1, 2, 3, 4]
# def sum_arr(arr)
#   i = 0
#   sum = 0
#   while i < arr.length
#     sum += arr[i]
#     i+=1
#   end
#   return sum
# end

# puts sum_arr(arr)