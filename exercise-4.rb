# Exercise 4 - Greeter 2
print "Please enter your first name : " 
firstName = gets.chomp
print "Please enter your last name : " 
lastName = gets.chomp
puts "Hello #{firstName} #{lastName}, How old are you?"
age = gets.chomp.to_i
puts "You will be #{age + 10} in 10 years"
puts "You will be #{age + 20} in 20 years"
puts "You will be #{age + 30} in 30 years"
puts "You will be #{age + 40} in 40 years"
name = firstName + lastName
puts "Your name reversed is #{name.reverse.downcase}"
puts "Your name has #{name.length} characters"
puts "Your name in uppercase is #{name.upcase}"