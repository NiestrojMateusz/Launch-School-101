require 'pry'
# Cute angles

# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes, and seconds. You should use a degree symbol (˚) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.

# Examples:

def dms(num)
  if num < 0
    negative = -1 * num if num < 0
    num = -1 * num
  end
  
  degrees, rest = num.divmod(1)
  minutes, rest = ((num - degrees) * 60.00).divmod(1)
  seconds = ((num - degrees) - (minutes/60.00)) * 3600
  
  
  if seconds >= 59.9
    minutes +=1
    seconds = 0
  end  
  
 return p format("%d°%02d'%02d\"", degrees, minutes, seconds) if negative == nil
 p format("%d°%02d'%02d\"", -1 * degrees, minutes, seconds)
end

# p dms(30) == %(30°00'00")
p dms(-76.73) == %(-76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")