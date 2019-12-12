# Exercise 21 - Roman Numerals
=begin
roman_numerals = [
    [1, "I"],
    [4, "IV"],
    [5, "V"],
    [9, "IX"],
    [10, "X"],
    [40, "XL"],
    [50, "L"],
    [90, "XC"],
    [100, "C"],
    [400, "CD"]
    [500, "D"],
    [900, "CM"]
    [1000, "M"],
]
=end

def roman_numerals(num)
numerals = [1,4,5,9,10,40,50,90,100,400,500,900,1000]
romans = ["I","IV","V","IX","X","XL","L","XC","C","CD","D","CM","M"]
separate_nums = []
    until num == 0 # separate numbers
        numerals.each do |x|
            if num == x
                separate_nums =separate_nums.push(romans[numerals.index(x)])
                num = 0
                break
            elsif num < x 
                separate_nums =separate_nums.push(romans[numerals.index(x) - 1])
                num = num - numerals[numerals.index(x) - 1] 
                break
            elsif num > 1000
                separate_nums =separate_nums.push(romans[-1])
                num = num - numerals[-1]
            end
        end
    end
    return separate_nums.join("")
end

p roman_numerals(2678)