# Write a method that returns the number of Friday the 13ths in the year passed in as an argument. You may assume that the year is greater than 1752 (when the modern Gregorian Calendar was adopted by the United Kingdom), and you may assume that the same calendar will remain in use for the foreseeable future.

# Examples:
require 'date'
def friday_13th?(year)
  counter = 0
  1.upto(12) do  |month|
    if Date.new(year,month,13).friday?
      counter += 1
    end  
  end
  counter
end

friday_13th?(2015) == 3
friday_13th?(1986) == 1
friday_13th?(2019) == 2