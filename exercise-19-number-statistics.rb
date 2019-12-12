# Exercise 19 - Number Statistics
# Show the lowest and highest number
# Show the sum of all the numbers inputted
# Show how many numbers are inputted
# Show the average of the numbers
# Show a list of all the even numbers only
# Show a list of all the numbers inputted
# If there are any prime numbers, show a list of prime numbers.

user_num = [] ## keep track of numbers

loop do # asking for user inputs
    print "Add a number? Type 'done' to stop : "
    temp = gets.chomp
    if temp != "done" # stop when user inputs done
        user_num = user_num.push(temp.to_i)
    else
        break
    end
end

def highest_num(array)
result = array[0]
    array.each do |x|   
        if x > result
        result = x
        end     
    end
    return result
end

def lowest_num(array)
result = array[0]
    array.each do |x|   
        if x < result
            result = x
        end    
    end
    return result  
end

def sum_of_all_num(array)
    total_sum = 0
    array.each do |x|
        total_sum += x
    end
    return total_sum
end

def even_num(array)
    even = []
    array.each do |x|
        if x % 2 == 0
            even = even.push(x)
        end
    end
    return even
end

def prime_numbers(array)
    result = []
        array.each do |x|
            temp = []
            for i in 1..x
                temp = temp.push(i) if x % i == 0
            end
            result = result.push(x) if temp.include?(x) && temp.include?(1) && temp.length == 2
        end
        return result if !result.empty?
        return false
    end

puts "The highest number is: #{highest_num(user_num)}"
puts "The lowest number is: #{lowest_num(user_num)}"
puts "The sum of all the numbers are: #{sum_of_all_num(user_num)}"
puts "You have inputted #{user_num.length} numbers"
puts "The average of the numbers are: #{sum_of_all_num(user_num).to_f / user_num.length}"
puts "These are all the even numbers: #{even_num(user_num).join(", ")}"
puts "These are all the numbers: #{user_num.join(", ")}"
if prime_numbers(user_num)
    puts "There are some prime numbers: #{prime_numbers(user_num).join(", ")}"
else
    puts "There are no prime numbers."
end