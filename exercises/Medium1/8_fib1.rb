=begin
Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

Understand the problem
-Fibonacci naumber is a number that is sum from previous and before previous number
input: number

Data strucutre
number

Algorithm

-if num is <= 2 then return 1
-sum fibonaci numbers --> f(n-1) + f(n-2)

=end
def fibonacci(num)
  return 1 if num <= 2
  
  fibonacci(num-1) + fibonacci(num-2)
end



fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765