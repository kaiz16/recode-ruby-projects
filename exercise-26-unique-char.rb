# Exercise 26 - Unique Characters
print "Enter a sentence : "
str = gets.chomp
puts "You have inputted this string : #{str}"

def is_upcase?(char)
    return char == char.upcase
end

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


# for i in 0..new_array.length - 1
#     if !result.include?(new_array[i].upcase) && !result.include?(new_array[i].downcase)
#         result[str[i]] = new_array.count(new_array[i])
#     end
# end

#p result
# for i in 0..new_array.length - 1
#     char = new_array[i]
#     count = 0
#     new_array.each do |x|
#         if x == char
#             count += 1
#         end
#     end
#     if char == " "
#         result["(space)"] = count
#     end
#     result[str[i]] = count
# end

#p result
# sorted_hash = result.sort_by {|char, value| value}.reverse # descending order, remove .reverse for ascending
# sorted_hash.each do |char, value|
#     puts "#{char} - #{value}"
# end