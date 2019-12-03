# Exercise 1 - Greeter
print "Please enter your first name : " 
firstName = gets.chomp
print "Please enter your last name : " 
lastName = gets.chomp
puts "Hello #{firstName} #{lastName} How old are you?"
age = gets.chomp.to_i
puts "You will be #{age + 10} in 10 years"
puts "You will be #{age + 20} in 20 years"
puts "You will be #{age + 30} in 30 years"
puts "You will be #{age + 40} in 40 years"