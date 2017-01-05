# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:
def repeater(string)
  new_string = ''
  string.split('').each { |letter| new_string << letter * 2  }
  new_string
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''