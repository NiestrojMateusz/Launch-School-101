# Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. The hash will contain two keys, :title and :occupation, and the appropriate values. Your method should return a greeting that uses the person's full name, and mentions the person's title.

# Example:

def greetings(arr, hash)
  name = arr.join(" ")
  specialization = hash[:title].to_s + " " + hash[:occupation].to_s
  puts "Hello, #{name}! Nice to have a #{specialization} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.