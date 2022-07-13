# Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# Input: 9
# Output: 21 (as this is the 9th number of the Fibonacci Sequence)

# function takes in an integer
# create an iterator variale
# loop should continue until you reach the n -1 index
# return n-1 index value

def fibonacci_index(n)
  fibonacci = [0,1]
  i = 1
  return fibonacci[0] if n < 2
  while fibonacci.length < n
    fibonacci << fibonacci[i] + fibonacci[i-1]
    i += 1
  end
  fibonacci[-1]
end
puts fibonacci_index(9)
