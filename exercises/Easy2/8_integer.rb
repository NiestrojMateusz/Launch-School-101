# Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# def total_sum(number)
#   total = 0
#   1.upto(number) {|i|
#     total += i
#   }
#   total
# end  

# def product(number)
#   total = 1
#   1.upto(number) {|i|
#     total *= i
#   }
#   total
# end  

# puts ">> Please enter an integer greater than 0:"

# answer = gets.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."

# operation = gets.chomp

# if operation == "s"
#   sum = total_sum(answer)
#   puts "The sum of the integers between 1 and #{answer} is #{sum}"
# elsif operation == "p"
#   product = product(answer)
#   puts "The product of the integers between 1 and #{answer} is #{product}."
# else  
#   puts "Oops. Unknown operation."
# end
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
def total_sum(number)
  (1..number).inject(:+)
end  

def product(number)
  (1..number).inject(1, :*)
end  

puts ">> Please enter an integer greater than 0:"

answer = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

operation = gets.chomp

if operation == "s"
  sum = total_sum(answer)
  puts "The sum of the integers between 1 and #{answer} is #{sum}"
elsif operation == "p"
  product = product(answer)
  puts "The product of the integers between 1 and #{answer} is #{product}."
else  
  puts "Oops. Unknown operation."
end