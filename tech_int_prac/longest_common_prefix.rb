# @param {String[]} strs
# @return {String}
                    
# Input: strs = ["flower","flow","flight"]
# Output: "fl"


#create an empty variable name prefix
#create variable to the first word so we can compare to rest of strs
#conditional --> if the indexed letter matches the indexed letter of first str, keep it and add to prefix
# else if the letter doesn't match prefix = ""
#return prefix
def longest_common_prefix(strs)
  return "" if strs.length == 0
  prefix = ""
  first = strs[0]
  for i in 0..first.length-1
    if strs.all?{|x| x[i] == first[i]}
      prefix += first[i]
    else
      break
    end
  end
  prefix
end
