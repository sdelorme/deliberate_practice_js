# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 

def arr_max(arr)
  return 0 if arr.empty?
  max_num = arr[0]
  arr.each do |num|
    if num > max_num
      max_num = num
    end
  end
  p max_num
end

arr_max([])