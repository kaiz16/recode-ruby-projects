# Exercise 2 - Calculator
puts "Can I have the first number?"
firstNum = gets.chomp.to_i
puts "Can I have the second number?"
secondNum = gets.chomp.to_i
sum = firstNum + secondNum
subtract = firstNum - secondNum
divide = firstNum / secondNum
multiplication = firstNum * secondNum
puts "Okay, #{firstNum} + #{secondNum} = #{sum}"
puts "#{firstNum} - #{secondNum} = #{subtract}"
puts "#{firstNum} * #{secondNum} = #{multiplication}"
puts "#{firstNum} / #{secondNum} = #{divide}"