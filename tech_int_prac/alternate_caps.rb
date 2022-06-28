# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

#   Input: “hello, how are your porcupines today?”
#   Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

def alt_caps(str)
  str = str.downcase
  i = 1
  while i < str.length
    str[i] = str[i].upcase
    i+=2
  end
  p str
end

alt_caps("hello, how are your porcupines today?")

# def every_other(string)
  #   i = 1
  #   while i < string.length
  #     string[i] = string[i].upcase
  #     i += 2
  #   end
  #   return string
  # end