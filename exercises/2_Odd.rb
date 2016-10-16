def is_odd?(number)
  number % 2 == 1
end

# def is_odd?(number)
#   number.to_i
#   if number < 0
#     number = number * (-1)
#   end
  
#   if number % 2 != 0
#     true
#   else
#     false
#   end  
# end  

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) 