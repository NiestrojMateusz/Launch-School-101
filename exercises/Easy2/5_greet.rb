# Greeting a user

# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

=begin
Understand the Problem
  input: string
  output: Greeting to user or asking question if input ends with "!"

Data structure
  String
  - slice last char
  
Algorithm
-Ask youser to get name
-store input in variable
  -slice input string to last character
-if last character is "!" then print out Greeting with question
-if last charcter is diffrent than ! then print out Greeting

=end

puts "What is your name?"
name = gets.chomp

if name[-1] == "!"
  puts "HELLO #{name[0...-1].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}"
end  

















puts "What is your name?"
username = gets.chomp
if username.include? "!" 
  puts "HELLO #{username.chop.upcase}. WHY ARE WE SCREAMING?" 
else
  puts "Hello #{username}"
end  

#===========================================================================

#LS solution
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

# they use string[-1] to check only one last character in the string