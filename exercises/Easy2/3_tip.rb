# Tip calculator

# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

=begin

Understand the Problem:
  input: string number- amount of bill and tip rate
  output: Compute tip and print out tip, bill and total amount
  
Data structure:
 Rules: - get the amount of bill and tip form user
        -convert strings to floats
Input : string
Output: String, float

Algorithm:
-Prompt for a bill amount
  -convert input to float and assign it to var
-Prompt for a tip rate
  -convert input to integer and assign it to var
- compute the tip
- print out tip and amount of total bill
  -use format to prepend $ sign
=end

def get_tip(bill_amount, tip_rate)
  (bill_amount*tip_rate)/100
end  

puts "What is the bill?"
bill_amount = gets.chomp.to_f.round(2)
puts "What is the tip percentage?"
tip_rate = gets.chomp.to_i

tip = get_tip(bill_amount, tip_rate)


puts "The tip is #{format('$%.2f', tip)}"
puts "The total is #{format('$%.2f', bill_amount + tip)}"


=begin -------------------------------------First attempt-------------------

def total_tip(bill, tip_percentage)
  (bill * tip_percentage)/100
end

puts "What is the bill?"
bill = gets.chomp.to_f.round(2)

puts "What is the tip percentage?"

tip_percentage = gets.chomp.to_f.round(2)

tip = total_tip(bill, tip_percentage) 

puts "The tip is #{format('$%.2f', tip)}"
puts "The total is #{format('$%.2f', bill + tip)}"

=end

