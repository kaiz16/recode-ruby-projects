# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here
def compress_string(str)
# 1) Make a while loop and track it with 'current_char' variable and set it to 0. 
# 2) Make a 'appearance' variable and set it to 1.
# 3) Make a another loop inside loop and track it with 'i' variable
# 4) Compare 'str[i]' with 'str[current_char]' on each iteration
# 5) If current_char and i matches, then increment appearance by 1.
# 6) Else, break out of nested loop
# 7) Now, if appearance is greater than 1. Take one single character of the consecutive characters and add to result with their appearance time.
# 8) Else, just add single character to result.
# 9) Increment current_char by appearance (Don't repeat consecutive characters) and loop until current_char == str.length - 1. 
    result = ""
    current_char = 0
    while current_char < str.length
        appearance = 1
        for i in (current_char + 1)..str.length - 1
            if str[current_char] == str[i]
                appearance += 1
            else
                break
            end
        end
        if appearance == 1
            result += "#{str[current_char]}"
        else
            result += "#{appearance}#{str[current_char]}"
        end
        current_char += appearance
    end
    return result
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, expected)
    actual = compress_string(string)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1,"aaabbc", "3a2bc")
    check_solution(2, "xxyyyyzz", "2x4y2z")
    check_solution(3, "qqqqq", "5q")
    check_solution(4, "mississippi", "mi2si2si2pi")
end

# Execute the tests.
run_tests()