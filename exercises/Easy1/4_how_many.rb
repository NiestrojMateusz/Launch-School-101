vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end
  occurrences.each do |element, count|
  puts "#{element} ==> #{count}"
  end  
end

count_occurrences(vehicles)
