DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
require 'pry'
def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    # binding.pry
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(int)
  if int < 0
    result = integer_to_string(-int)
  else  
    result = integer_to_string(int)
  end
  
  case int <=> 0
  when -1 then result.prepend("-")
  when 1 then result.prepend("+")
  else
    result
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'