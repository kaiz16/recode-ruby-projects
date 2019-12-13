# Exercise 33
# You will write a method, replace_char_at!, that will mutate an input string by replacing the index of the string with another provided character
# Your method should accept two Strings, in which one of them should only accept one character as input
# Your method should also accept an Integer as the index as input
# The method should mutate the string that is provided by replacing the given index of the string with the character. 
# The method should return the string
# 
# Note: This method has a BANG!, thus it must MUTATE the input string. 
# This means that the object_id of the input string should be identical to the object_id of the returned string

def replace_char_at!(string, char, index)
    string[index] = char
    return string
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, string, char, index, expected)
    actual = replace_char_at!(string, char, index)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end
    if string.object_id != actual.object_id
        puts "Test ##{test_number}: Incorrect, must mutate original value"
        return false
     end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, "download", "z", 0, "zownload")
    check_solution(2, "account", "0", 3, "acc0unt")
    check_solution(3, "greatest", "3", 2, "gr3atest")
end

# Execute the tests.
run_tests()