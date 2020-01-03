# Write a method, compress_string(string), that accepts a string as input
# The method should return a new string where streaks of consecutive characters are compressed to a number followed by the character.
# For example "aaabbc" is compressed to "3a2bc".

# Write Your method code here
def compress_string(str)
# 1) Seperate consecutive characters and a single character to different arrays using regex (2D array)
# 1a) Then join the 2D array to 1D array.
# 2) Single and consecutive characters is now separated and the array is now 1D
# 3) Using a map method, count how many characters an item holds
# 3a) If an item contains more than 1 character, map it as "character length + one single character" (so that 'aaa' looks like '3a')
# 3b) Else, leave it
# 4) Return the string
    array = str.scan(/(\w)(\1*)/).map{|x| x.join()}
    array.map! do |x|
        if x.length > 1
            "#{x.length}#{x[0]}" 
        else 
            "#{x}"
        end
    end
    return array.join()
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