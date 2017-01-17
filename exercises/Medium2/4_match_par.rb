# Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Examples:
 #require 'pry'
def balanced?(string)
  parentheses = string.chars.select do |char|
    char == "(" || char == ")"
  end
  
  p_first_half = parentheses[0..parentheses.size/2.0-1]
  p_sec_half = parentheses[parentheses.size/2.0.ceil..parentheses.size-1]
  if parentheses.size.odd? || parentheses[0] == ")"
    return false
  else
    p_first_half.reverse.join("").gsub(/[()]/, "(" => ")", ")" => "(") == p_sec_half.join("")
  end  
end
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
# Note that balanced pairs must each start with a (, not a ).

#======================LS====================================
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

