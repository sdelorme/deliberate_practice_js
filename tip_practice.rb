def new 
    nums = [1,2,3,4,5]
    new_nums = []
   i=0
   j=-1
  while i < nums.length
    new_nums << nums[j]
    i++
    j--
  end
  return new_nums
end

puts new_nums

