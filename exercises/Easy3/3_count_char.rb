# Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

#=============================PseudoCode======================================
#-get a words from a user and stor it in a variable
#-split the word to array
#-check the size of the array
#=============================================================================
puts "Please write word or multiple words: "
input = gets.chomp

char_arr = input.split("")
char_arr.delete(" ")
chars_num = char_arr.size

puts "There are #{chars_num} characters in \"#{input}\""

#=============================other users solution=============================
# def num_chars(string)
#   count = string.length - string.count(' ')
#   puts "There are #{count} characters in \"#{string}\"."
# end

# puts 'Please write word or multiple words:'
# num_chars(gets.chomp)
#=============================with regexp======================================
# def remove_spaces(input)
#   input.gsub(/\W+\s/,'').length
# end

# print 'Please write a word or multiple words: '
# input = gets.chomp
# puts "There are #{remove_spaces(input)} characters in \"#{input}\"."

#==============================================================================
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."