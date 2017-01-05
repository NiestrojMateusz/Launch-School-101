require 'pry'
# Bannerizer

# Write a method that will take a short line of text, and print it within a box aaaaaaaa.

# Example:
TERMINAL_LENGTH = 76

def print_in_box(string)
  border_length = string.size > TERMINAL_LENGTH ? TERMINAL_LENGTH : string.size
  horizontal_border = "+#{'-' * (border_length + 2)}+"
  vertical_border = "|#{' ' * (border_length + 2)}|"
  
  
  

  
  puts horizontal_border
  puts vertical_border
  loop do  
    line = string.slice!(0..TERMINAL_LENGTH-1)
    message = "| #{line}#{' ' * (border_length - line.length)} |"
    puts message
    break if string.size == 0
  end
  
  puts vertical_border
  puts horizontal_border
end 

# print_in_box('To boldly go where no one has gone before.')

print_in_box("Space: the final frontier. These are the voyages of the starship Enterprise.Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.")

print_in_box('')


print_in_box("Siemanko Matis, jak się czujesz?")












#============================================================================
# MAX_LENGTH = 76

# def get_line(array)
#   line = ''

#   loop do
#     break if array.empty?#     
#     line.empty? ? line << array.shift : line << " #{array.shift}"
#     break if array.empty? || (line.length + array[0].length) > MAX_LENGTH
#   end

#   line
# end

# def print_in_box(string)
#   words = string.split
#   lines = (string.length / MAX_LENGTH) + 1
#   filler = string.length > MAX_LENGTH ? MAX_LENGTH : string.length

#   dashed_line = "+#{'-' * (filler + 2)}+"
#   empty_line = "|#{' ' * (filler + 2)}|"

#   puts dashed_line
#   puts empty_line

#   lines.times do
#     line = get_line(words)
#     puts "| #{line}#{' ' * (filler - line.length)} |"
#   end

#   puts empty_line
#   puts dashed_line
# end

