=begin
Staggered Caps (Part 2)

Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
=end

def staggered_case(string)
  num = []
  num_index = []
  arr = string.chars
  arr.each_with_index do |char, index|
    if char =~ /\d/
      num << char
      num_index << index
  end
  
  

  
  result = arr.map.with_index do |char, index|
    if (index.even? || index == 0) && char == char.downcase
      char.upcase
    elsif index.odd? && char == char.upcase
      char.downcase
    else
      char
    end  
  end 
  result.join
end












def staggered_case(string, first_char_case=true)
  arr = string.split("")
  first_char_upcase = first_char_case
  new_arr = arr.each_with_index do |el, i|
    # binding.pry
    if el =~ /[^A-Zaz]/i
      el
    end
    
    if first_char_upcase == true && i.even? == true
      el.upcase!
    elsif 
      el.downcase!
    end
    
    if first_char_upcase == false && i.even? == false
      el.upcase!
    end  
  end  
  new_arr.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'