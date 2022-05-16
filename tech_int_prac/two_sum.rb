def two_sum(nums, target)
  parts_hash = {}
  nums.each_with_index do |num, i|
    return [parts_hash[num], i] if parts_hash.key?(num)
    part = target - num
    parts_hash[part] = i
  end
end