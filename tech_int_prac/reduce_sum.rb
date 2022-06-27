arr = [7,4,5,2,3]

def calc_sum(arr)
  sum = 0
  arr.each do |num|
    sum += num
  end
  sum
end

calc_sum(arr)