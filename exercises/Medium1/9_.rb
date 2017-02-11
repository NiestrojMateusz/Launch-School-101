=begin
Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

Understand the problem
-Fibonacci naumber is a number that is sum from previous and before previous number
input: number

Data strucutre
number

Algorithm
create two variables first and last equals 1 and 1
-from 3 upto argument number do 
  -reassing first and last 
    - first = last
    -last = first+ last

=end

def fibonacci(num)
  first, last = 1, 1
  
  3.upto(num) do
    first, last = last, first + last
  end
  
  last
end