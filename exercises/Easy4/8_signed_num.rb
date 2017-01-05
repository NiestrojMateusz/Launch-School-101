require 'pry'
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15, 
}
# def string_to_signed_integer(string)
#   sign = ''
#   string.include?("-") ? sign = '-' : sign = '+'
    
#   digits = string.chars.map {|char| DIGITS[char]}
  
#   digits.shift if digits.include?(nil)
   
  
#   value = 0
  
#   digits.each { |digit| value = 10 * value + digit }
#   if sign == "-"
#     value = value * -1
#   end
#   value
# end

def string_to_integer(string)
  digits = string.chars.map {|char| DIGITS[char]}
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


def string_to_signed_integer(string)
  binding.pry
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
