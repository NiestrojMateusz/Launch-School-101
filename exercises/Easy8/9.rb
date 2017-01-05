# Convert number to reversed array of digits

# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:
def reverse!(arr)
  return arr if arr == []  || arr.length == 1
  
  finished = arr.length - 1
  
  loop do
    e = arr.shift
    arr.insert(finished, e)
    finished -= 1
    break if finished == 0
  end
  arr
end

def reversed_number(num)
  arr = num.to_s.split("")
  reverse!(arr).join("").to_i
end
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # Note that zeros get dropped!
reversed_number(1) == 1



#==================================LS=======================================
# def reversed_number(number)
#   string = number.to_s
#   digits = string.chars
#   reversed_digits = digits.reverse
#   reversed_string = reversed_digits.join('')
#   reversed_string.to_i
# end