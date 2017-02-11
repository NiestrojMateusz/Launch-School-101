require 'pry'
def star(size)
  stars = %w(* * *)
  spaces = (size - stars.size) / 2

  size.times do |line|
    binding.pry
    if line == size / 2
      puts '*' * size
    elsif line < size / 2
      puts stars.join(' ' * spaces).center(size)
      spaces -= 1
    else
      spaces += 1
      puts stars.join(' ' * spaces).center(size)
    end
  end
end

star(5)