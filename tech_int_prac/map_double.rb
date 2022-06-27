# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def double_arr(arr)
  doubled_array =  []
  arr.each do |num|
    doubled_array << num*2
  end
  p doubled_array
end

double_arr([4, 2, 5, 99, -4])