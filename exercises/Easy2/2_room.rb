# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

=begin
  Understand the Problem:
  -input: -string of room width and height (in meters) typed by user
  -output: - printed out a messege with roome dimesion in square feets
  
  Example: 
  # Enter the length of the room in meters:
  # 10
  # Enter the width of the room in meters:
  # 7
  # The area of the room is 70.0 square meters (753.47 square feet).
  
  Data structure: 
  - string
  - float : how is 1m^2 to 1ft^2
  
  Rules: Convert string to float
  
  Algorithm:
  - set a constants float 1m^2 to 1ft^2
  -Ask user to type width and height in mteres
    - get a value of width and height
    -convert string answer to float using #to_f
    -multiply a user input to get area in meters
    - multiply area in meters by constants
    -print out a sentence 
=end

SQMETERS_TO_SQFEET = 10.7639
def get_length
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
end

def get_width
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f
end

def room_area(length, width)
  area = length * width
end

length = get_length
width = get_width

area = room_area(length, width)

area_in_sqfeet = (area*SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{area} square meters (#{area_in_sqfeet} square feet)"