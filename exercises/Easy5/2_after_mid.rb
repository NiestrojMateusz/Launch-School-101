require 'pry'
# After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:
# def time_of_day(number)
#   hour, minutes = number.divmod(60) 
#   if hour < 0 && hour >= -24
#     hour += 24
#   elsif hour < -24
#       hour = hour * (-1)
#       hour = hour % 24
#       hour = 24 - hour
#   end
#   hour = hour % 24 if hour >= 24
#   hour = prepend(hour)
#   minutes = prepend(minutes)
#   p "#{hour}:#{minutes}"
# end

# def prepend(number, string = "")
#   if number < 10
#     string = "0#{number.to_s}"
#   else 
#     string = number.to_s
#   end
#   string  
# end


# Disregard Daylight Savings and Standard Time and other complications.

#==============================LS solution ===============================

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"