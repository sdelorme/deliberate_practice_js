# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# DID NOT DO THIS WITH HASH YET

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
                               
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

#input: [6, 3, 2], [1, 2, 3, 4, 5, 6]
#ouptut: false

#input: [6, 3, 2], [2, 2, 2, 2, 2, 2]
#ouptut: true

#create a function
#check if each value in second array is in first, if not stop return false
#if yes, move on to next index of second array cntd


# def is_subset(arr1,arr2)
#   arr2.each do |num|
#     found = false
#     arr1.each do |num2|
#       if num == num2
#         found = true
#         break
#       end
#     end
#     if found == false
#       return false
#     end
#   end
#   return true
# end

# p is_subset([6, 3, 2], [2, 2, 2, 2, 2, 2])