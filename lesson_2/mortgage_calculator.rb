# -get a loan amount
# - check if its valid input 
#   if input contain dolar sing or comma remove it
# -get a annual the Annual Percentage Rate (APR) 
# -check that input is valid
# -get loan duration in months
# -
require 'pry'
def prompt(message)
  Kernel.puts("=> #{message}")
end
def integer?(input)
  input.to_i().to_s() == input
end

def float?(input)
  input.to_f().to_s() == input
end

def valid_input?(number)
  (integer?(number) || float?(number)) && number.to_f() > 0
end

prompt("Welcome to loan calculator")

loop do
  input_loan = ''
  loop do
    prompt("What is your loan amount")
    input_loan = Kernel.gets().chomp().delete("$,")
    
    if valid_input?(input_loan)
      break
    else
      prompt("Invalid input. Input have to be a positive number. Try again.")
    end
    
  end
  
  input_ARP = ''
  loop do
    prompt("What is your Annual Percentage Rate? [i.e 5 for 5%]")
    input_ARP = Kernel.gets().chomp().delete("%")
    
    if valid_input?(input_ARP)
      break
    else
      prompt("It is not a valid number. Please try again.") 
    end
    
  end
  
  input_duration =''
  loop do
    prompt("What is the duration of the loan [years]" )
    input_duration = Kernel.gets().chomp()
    if valid_input?(input_duration)
      break
    else
      prompt("Invalid input. Be sure to put duration in years.")
    end  
  end  
  
  n = input_duration.to_f * 12
  p = input_loan.to_f()
  j = input_ARP.to_f() / 100 / 12
  monthly_payment = p * (j / (1-(1 + j)**-n)).round(2)
  binding.pry
  prompt("Your monthly payment is #{monthly_payment} $")
  
  prompt "Do you want start again? [Y/N]"
  answer = Kernel.gets().chomp().downcase
  
  if answer == "y"
    next
  else
    break
  end
end  

prompt("Thank you for using a calculator!")
