# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# p arr1[2][1][3]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# p arr2[1][:third][0]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# p arr3[2][:third][0][0]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# p hsh1['b'][1]

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p hsh2[:third].key(0)

# Exercise 2

# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

# arr1 = [1, [2, 3], 4]

# arr1[1][1] = 4
# p  arr1

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[2] = 4
# p arr2

# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][2] = [4]
# p hsh1

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2[['a']][:a][2] = 4

# p hsh2

# Exercise 3

# Given this code, what would be the final values of a and b? Try to work this out without running the code.

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2  #=> 4
# arr[1][0] -= a # => 3

# p a, b

# Exercise 4

# Using the each method, write some code to output all of the vowels from the strings.

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# hsh.each do |key, value|
#     value.each do |val|
#       val.chars.each do |char|
#         if char == /[aeiou]/
#           puts char
#         end  
#       end  
#     end  
# end

# Exercise 5

# Given this data structure, return an new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |el|
#   el.sort do |c, d| 
#     d<=>c
#   end
# end

# Exercise 6

# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

# arr3 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr4= arr3.map do |hsh|
#   new_hash = {}
#   hsh.each do |k, v|
#     new_hash[k] = v + 1
#   end
#   new_hash
# end
# p arr4

# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map do |ary|
#   ary.reject do |el|
#     el if el % 3 != 0 
#   end
# end

# Exercise 8

# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# hash = {}

# arr.each do |el|
#   hash[el[0]] = el[1]
# end

# hash

# Exercise 9

# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically according to the numeric value of the odd integers they contain.

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# arr.sort_by do |el|
#   el.select do |i|
#     i.odd?
#   end 
# end

# Exercise 10

# Given this data structure write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# hsh.map do |_, value|
#   if value[:type] == 'fruit'
#     value[:colors].map do |color|
#       color.capitalize
#     end
#   elsif value[:type] == 'vegetable'
#     value[:size].upcase
#   end
# end

# Exercise 11

# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select do |hash|
#   hash.all? do |k, v|
#     v.all? do |num|
#       num.even?
#     end  
#   end
# end

# Exercise 12

# Given this data structure, and without using the Array#flatten method, write some code to return a new array containing all of the items in the original array but in a flat structure.


arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

arr.each_with_object([]) do |element1, new_arr|
  if element1.size >= 5
    new_arr << element1
  else
    element1.each do |element2|
      if element2.size >= 5
        new_arr << element2
      else
        element2.each do |element3|
          new_arr << element3
        end
      end
    end
  end
end
