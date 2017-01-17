# Grade book

# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter Grade 90 <= score <= 100 'A' 80 <= score < 90 'B' 70 <= score < 80 'C' 60 <= score < 70 'D' 0 <= score < 60 'F'

# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Example:

def get_grade(num1, num2, num3)
  score = (num1 + num2 + num3)/3
  case 
  when 90 <= score && score <= 100
    "A"
  when 80 <= score 
    "B"
  when 70 <= score 
    "C"
  when 60 <= score 
    "D"
  when 50 <= score 
    "E"
  when 0 <= score 
    "F"
  end  
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"