def digits(number)
  number.to_s.chars.map { |char| char.to_i }
end  

puts digits(8657)