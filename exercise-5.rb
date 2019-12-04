# Exercise 5 - Calculator 2
print "Please enter first number : "
firstNum = gets.chomp.to_i
print "Please enter second number : "
secondNum = gets.chomp.to_i

def sum(num1, num2)
    return num1 + num2
end
def subtract(num1, num2)
    return num1 - num2
end

def multiplication(num1, num2)
    return num1 * num2
end

def division(num1, num2)
    return num1 / num2
end

def modulus(num1, num2)
    return num1 % num2
end

puts "Addition of #{firstNum} and #{secondNum} is #{sum(firstNum, secondNum)}"
puts "Subtraction of #{firstNum} and #{secondNum} is #{subtract(firstNum, secondNum)}"
puts "Multiplication of #{firstNum} and #{secondNum} is #{multiplication(firstNum, secondNum)}"
puts "#{firstNum} divided by #{secondNum} is #{division(firstNum, secondNum)} with a remainder of #{modulus(firstNum, secondNum)}"