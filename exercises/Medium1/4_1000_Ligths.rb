# 1000 Lights

# You have a bank of switches before you numbered from 1 to 1000. Each switch is connected to exactly one light that is initially off. You walk down the row of switches, and turn every one of them on. Then, you go back to the beginning and toggle switches 2, 4, 6, and so on. Repeat this for switches 3, 6, 9, and so on, and keep going until you have been through 1000 repetitions of this process.

# Write a program that determines which lights are on at the end.

# Example with 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.

# def lights_quantity(num)
#   lights = Hash.new
#   1.upto(num) { |i| lights[i] = 'off'}
#   lights
# end  

# lights = lights_quantity(5)

def on_off(lights)
  
  1.upto(lights.size+1) do |round|
    lights.map do |light|
      if light[0] % round == 0
        light[1] == "off" ? light[1] = "on" : light[1] = "off"
      end  
    end
  end
  lights
end  


lights = []
1.upto(1000) {|i| lights << [i, "off"]}
on_off(lights).select do |element| 
  puts "Light #{element[0]} is #{element[1]}" if element[1] == "on"
end  
