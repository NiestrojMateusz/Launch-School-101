# Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Example:

def buy_fruit(array)
  new_arr = []
  array.each do |element|
     element[1].times {new_arr << element[0]} 
  end
  new_arr
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
  
#======================ls solution=========================
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end