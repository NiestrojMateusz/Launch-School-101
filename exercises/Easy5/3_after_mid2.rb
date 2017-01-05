# After Midnight (Part 2)

# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(str)
  arr = str.split(":")
  if arr[0].to_i < 24
    number = arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i
    number
  else 
    0
  end  
end

def before_midnight(str)
  arr = str.split(":")
  if arr[0].to_i < 24
    number = arr[0].to_i * MINUTES_PER_HOUR - arr[1].to_i
    number
  else 
    0
  end
end
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
# Disregard Daylight Savings and Standard Time and other irregularities.