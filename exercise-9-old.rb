# Exercise 9 - Ruby Calculator 3 - solution 2
print "First number? "
firstNum = gets.chomp.to_i
print "Second number? "
secondNum = gets.chomp.to_i
puts "What type of operation do you want? (+ - * /)"
operator = gets.chomp

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

def place_value(n)
           puts "The number in the thousandth place is : #{n / 1000}"  if n >= 1000
           puts "The number in the hundredth place is : #{n / 100 % 10}" if n >= 100
           puts "The number in the tens place is : #{n / 10 % 10}" if n >= 10
           puts "The number in the ones place is : #{n / 1 % 10}"
 end

case operator
    when "+"
        puts "#{firstNum} + #{secondNum} is #{sum(firstNum, secondNum)}"
        place_value(sum(firstNum, secondNum))
    when "-"
        puts "#{firstNum} - #{secondNum} is #{subtract(firstNum, secondNum)}"
        place_value(subtract(firstNum, secondNum))
    when "*"
        puts "#{firstNum} * #{secondNum} is #{multiplication(firstNum, secondNum)}"
        place_value(multiplication(firstNum, secondNum))
    when "/"
        if firstNum % secondNum == 0
            puts "#{firstNum} divided by #{secondNum} is #{division(firstNum, secondNum)}"
            place_value(division(firstNum, secondNum))
        else
            puts "#{firstNum} divided by #{secondNum} is #{division(firstNum, secondNum)} with a remainder of #{modulus(firstNum, secondNum)}"
            place_value(modulus(firstNum, secondNum))
        end
    
end