# Sum of Sums

# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

# Examples:

def sum_of_sums(arr)
  index = 1
  sum = arr[0]
  total = 0
  until index >= arr.size
    total = total + sum 
    sum = sum + arr[index]
    index += 1
  end
  sum
end

sum_of_sums([3, 5, 2]) == 21
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

# sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2)
# # sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)

#===========================ls==================================
def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end