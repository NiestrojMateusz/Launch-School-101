# Word to Digit

# Write a method that takes a sentence string as input, and returns a new string that contains the original string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.


NUMBERS = {'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(str)
  str.split(/\b/).map! { |word| NUMBERS.keys.include?(word) ? NUMBERS[word] : word}.join('')
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


def word_to_phn_number(string)
  new_string = word_to_digit(string)
  new_string.gsub!(/(\d)\s/, '\1')
  new_string.gsub(/(\d{3})(\d{3})(\d{4})/) {
    format("(%d) %d-%d", "#{$1}", "#{$2}", "#{$3}")
  }
end

p word_to_phn_number('Please call me at five five five one two three four
                      five six seven. Thanks.')
# => "Please call me at (555) 123-4567. Thanks."