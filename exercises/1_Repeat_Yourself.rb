# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat_yourself(string, integer)
  integer.times do
    puts string
  end 
end

repeat_yourself("Julka", 3)