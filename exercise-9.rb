# Exercise 9 - Ruby Calculator 3
print "First number? "
firstNum = gets.chomp.to_i
print "Second number? "
secondNum = gets.chomp.to_i
puts "What type of operation do you want? (+ - * /)"
operator = gets.chomp

def result(num1, num2, opr)
    # answer = num1
    return num1.send(opr, num2)
end

def place_value(n)
           puts "The number in the thousandth place is : #{n / 1000}"  if n >= 1000
           puts "The number in the hundredth place is : #{n / 100 % 10}" if n >= 100
           puts "The number in the tens place is : #{n / 10 % 10}" if n >= 10
           puts "The number in the ones place is : #{n / 1 % 10}"
end

if operator == "/" && firstNum % secondNum != 0 
    puts "#{firstNum} #{operator} #{secondNum} is #{result(firstNum, secondNum, operator)} with a remainder of #{result(firstNum, secondNum, "%")}"
    place_value(result(firstNum, secondNum, "%"))
else
    puts "#{firstNum} #{operator} #{secondNum} is #{result(firstNum, secondNum, operator)}"
    place_value(result(firstNum, secondNum, operator))
end