def reverse_words(string)
  words_array = string.split
  words_array.each do |index|
    if index.length > 4
      index.reverse!
    end
  end
  words_array.join(' ')
end  

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

# def reverse_words(string)
#   words = []

#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end