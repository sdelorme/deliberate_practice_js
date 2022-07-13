# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

# If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.



# function takes in a year between 0 and infinity
# multiple conditionals
# variable called leap_year and set to false
# conditional in certain order -- start with if divisible by 400 and 4
# check divisbility by 4 and not by 100
# else false

def leap_year?(n)
  leap_year = false
  if n % 4 == 0
    leap_year = true
  end
  if n % 4 == 0 && n % 100 == 0
    leap_year = false
  end
  if n % 4 == 0 && n % 400 == 0
    leap_year = true
  end
  leap_year
end

puts leap_year?(1600)