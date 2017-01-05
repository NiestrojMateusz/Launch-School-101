require 'pry'
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed in to this method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

def reverse!(arr)
  return arr if arr == []  || arr.length == 1
  
  finished = arr.length - 1
  
  loop do
    e = arr.shift
    arr.insert(finished, e)
    finished -= 1
    break if finished == 0
  end
  arr
end

list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
p reverse!([]) # => []
p list == []