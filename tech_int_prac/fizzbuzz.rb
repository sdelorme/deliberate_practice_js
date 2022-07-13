# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

# write function that takes in n to determine a stopping number of list
# write do loop for nums
# conditional 
# if divis by 3 print fizz
# else if divis by 5 print buzz
# else if divis by 3 and 5 print fizzbuzz
# else print num



def fizzbuzz(n)
  (1..n).each do |num|
    if num % 3 == 0 && num % 5 == 0
      p "FIZZBUZZ"
    elsif num % 5 == 0
      p "BUZZ"
    elsif num % 3 == 0
      p "FIZZ"
    else
      p num
    end
  end
end

fizzbuzz(35)