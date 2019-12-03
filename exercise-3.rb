# Exercise 3 - The n-th Place
puts "What is your number? (Enter 4 digit)"
number = gets.chomp.to_i
puts "The number in the thousandth place is : #{number / 1000}"
puts "The number in the hundredth place is : #{number / 100 % 10}"
puts "The number in the tens place is : #{number / 10 % 10}"
puts "The number in the ones place is : #{number / 1 % 10}"