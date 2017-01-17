# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  the_longest = sentences.max_by {|sen| sen.length}.strip
  words = the_longest.split.size
  
  puts "#{the_longest}"
  puts "Number of words: #{words}"
end

def longest_word(text)
  word = text.split(" ")
  the_longest = word.max_by {|wrd| wrd.length}.strip
  puts "#{the_longest}"
  puts "Number of words: #{the_longest.size}"
end

def longest_paragraph(text)
  
end

text = File.read('sample_text.txt')
longest_sentence(text)
longest_word(text)