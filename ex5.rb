my_name = 'James Maxwell'
my_age = 35 # not a lie
my_height = 168 # cm 
my_weight = 60 # kg
my_eyes = 'Black'
my_teeth = 'White'
my_hair = 'Black'

puts  "Let's talk about %s." %my_name
puts "He's %d centmeter tall." %my_height
puts "He's %d kg heavey." %my_weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." %[my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." %my_teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." %[
  my_age, my_height, my_weight, my_age + my_height + my_weight]
