# Exercise 32
# You will write a method, max_number, that accepts any amount of Integer arguments and returns the largest number
# Your method should accept any number of Integer arguments
# The method should return an Integer
# You must use inject in this method to solve the problem

# Write Your method code here
def max_inject(*values)
    values.inject do |acc, el|
        if acc > el
            acc
        else
            el
        end
    end
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, expected, *values)
    actual = max_inject(*values)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, 7, 1, -4, 0, 7, 5)
    check_solution(2, 30, 30, 28, 18)
    check_solution(3, 28, -30, 28, 18)
end

# Execute the tests.
run_tests()