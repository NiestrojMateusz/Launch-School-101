# Question 3

#Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

# Question 5

# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

(10..100).cover?(42)

# Question 6
# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

puts famous_words.insert(0, "Four score and ")

famous_words = "Four score and " + "seven years ago..."

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")

famous_words
"Four score and " << famous_words

# Question 9

# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney")

# Question 10

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end