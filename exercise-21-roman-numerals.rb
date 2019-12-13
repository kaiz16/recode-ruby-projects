# Exercise 21 - Roman Numerals
# This will handle all the numbers between 0 and 4000000
=begin
roman_numerals = [
    [1,"I"],[4,"IV"],[5,"V"],[9,"IX"],
    [10,"X"],[40,"XL"],[50,"L"],[90,"XC"],
    [100,"C"],[400,"CD"],[500,"D"],[900,"CM"],
    [1000,"M"],[4000,"IV"],[5000,"V"],[9000,"IX"],
    [10000,"X"],[40000,"XL"],[50000,"L"],[90000,"XC"],
    [100000,"C"],[400000,"CD"],[500000,"D"],[900000,"CM"]
    [1000000,"M"]
] Numbers that are greater than 1000 will have macron (\u0304) over the symbol
=end
print "Enter a number to convert to Roman Numerals : "
num = gets.chomp.to_i
def roman_numerals(num)
numerals = [
1000000,900000,500000,400000,100000,90000,50000,40000,10000,9000,5000,4000,1000,900,500,400,100,90,50,40,10,9,5,4,1
] #Handling big numbers 10000000 3999999
romans = [
"M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"
] #add macron on top of a character to indicate big numbers 
result = []
macron = ""
    until num == 0 # separate numbers
        numerals.each do |x|
            if num == x 
                result = result.push(x)
                num = 0
                break
            elsif num > x && num <= 3999999
                result = result.push(x)
                num = num - x
                break
            elsif num > 3999999
                #Don't process these numbers
                return "Your number's too high. Enter below 4000000"
                # result = result.push(numerals[0])
                # num = num - numerals[0]
                # break
            end
        end
    end
    result.map! do |x|
        if x > 1000
            macron += "_" * romans[numerals.index(x)].length
        end
        x = romans[numerals.index(x)]
    end
    return "#{macron}\n#{result.join("")}"
end

puts roman_numerals(num)