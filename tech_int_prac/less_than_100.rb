arr = [99, 101, 88, 4, 2000, 50]

def less_than_100(arr)
  new_arr = []
  arr.each do |num|
    if num < 100
      new_arr << num
    end
  end
  new_arr
end

less_than_100(arr)