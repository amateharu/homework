puts "Enter hours: "
h = gets.chomp
puts "Enter minutes: "
m = gets.chomp
angle = (30 * h.to_i) + (0.5 * m.to_i) - (6 * m.to_i)
puts ("Angle is: " + angle.to_s)