# Arithmetic Integer

# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

#===============================pseudo-code===================================
#-get two numbers(positive integers) from user
#-create variable for additon
#-create variable for subtraction
#-create variable for product
#-create variable for quotient
#-create variable for remainder
#-create variable for power
#============================================================================

puts "==> Enter the first number: "
first_num = gets.chomp.to_i
puts "==> Enter the second number: "
second_num = gets.chomp.to_i

addition = first_num + second_num
subtraction = first_num - second_num
product = first_num * second_num
quotient = first_num / second_num
remainder = first_num % second_num
power = first_num ** second_num

puts "==> #{first_num} + #{second_num} = #{addition}"
puts "==> #{first_num} - #{second_num} = #{subtraction}"
puts "==> #{first_num} * #{second_num} = #{product}"
puts "==> #{first_num} / #{second_num} = #{quotient}"
puts "==> #{first_num} % #{second_num} = #{remainder}"
puts "==> #{first_num} ** #{second_num} = #{power }"

#=============================other solution===================================
# def calculate(num1, num2)
#   operators = [:+, :-, :*, :/, :%, :**]
#   operators.each do |op|
#     puts "==> #{num1} #{op} #{num2} = #{num1.send(op, num2)}"
#   end
# end

# puts '==> Enter the first number:'
# num1 = gets.chomp.to_i
# puts '==> Enter the second number:'
# num2 = gets.chomp.to_i

# calculate(num1, num2)

#============================other solution2====================================

# puts 'Please enter two positive numbers'
# numbers = gets.chomp.split.map(&:to_i)

# puts "#{numbers[0]} + #{numbers[1]} = #{numbers.inject(:+)}"
# puts "#{numbers[0]} - #{numbers[1]} = #{numbers.inject(:-)}"
# puts "#{numbers[0]} * #{numbers[1]} = #{numbers.inject(:*)}"
# puts "#{numbers[0]} / #{numbers[1]} = #{numbers.inject(:/)}"
# puts "#{numbers[0]} % #{numbers[1]} = #{numbers.inject(:%)}"
# puts "#{numbers[0]} ** #{numbers[1]} = #{numbers.inject(:**)}"