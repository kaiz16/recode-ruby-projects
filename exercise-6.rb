# Exercise 6 - Exponent
print "Enter number : "
num = gets.chomp.to_i
print "Enter power of : "
power = gets.chomp.to_i
def exponent (num, power)
    return num ** power
end

puts exponent(num,power)