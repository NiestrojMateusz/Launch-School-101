# What Century is That?

# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Examples:
def century(year)
  year = year.to_f
  century = year/100
  century = century.ceil.to_s
  century + century_suffix(century)
end

def century_suffix(century)
  if century.length >= 2
    last_num = century.chars.last(2).join
    case last_num
    when /[^1]1/
      "st"
    when /[^1]2/
      "nd"
    when /[^1]3/
      "rd"
    else
      "th"
    end
  elsif century.length < 2
    last_num = century.chars.last
    case last_num
    when "1"
      "st"
    when "2"
      "nd"
    when "3"
      "rd"
    else
      "th"
    end
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'