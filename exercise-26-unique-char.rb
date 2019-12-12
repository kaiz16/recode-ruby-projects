# Exercise 26 - Unique Characters
print "Enter a sentence : "
str = gets.chomp
puts "You have inputted this string : #{str}"

def unique_characters(str)
split_chars = str.downcase.split("")
result = {} # storing characters and their appearances in hash table
    split_chars.each do |char|
        if char != " "
            result[str[split_chars.index(char)]] = split_chars.count(char)
        else
            result["(space)"] = split_chars.count(char) # If space is detected, replace with "(space)"
        end
    end
    return result.sort_by {|char, value| value}.reverse # returning in descending order, remove .reverse for ascending
end

puts "The unique characters are : " 
unique_characters(str).each {|char, value| puts "#{char} - #{value}"}