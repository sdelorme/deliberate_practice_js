# Write a function that returns whether a given number is a prime number.

# function takes in a number
# returns true or false whether or not it is a prime number
# prime number has two factors, one and itself
# create a while lopp/times do loop to check divisiblitily of every number up to n
# if remainder ever equals 0, than the number is not prime

# input that would = true
# 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97

def is_prime?(n)
  return "1 is a special friend" if n == 1
  is_prime = true
  i = 2
  while i < n
    if n % i == 0
      is_prime = false
      break
    end
    i += 1
  end
  is_prime
end

puts is_prime?(7)