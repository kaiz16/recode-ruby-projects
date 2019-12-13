# Exercise 29
# You will write a method, is_coprime? to find coprime numbers
# Wikipedia: https://en.wikipedia.org/wiki/Coprime_integers
# Your method should accept two numbers as parameters
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. 
# For example is_coprime?(25, 12) is true because 1 is the only number that divides both 25 and 12.

# Write Your method code here
def is_coprime?(a, b)
    factors_of_a = *(1..a).select {|n| a % n == 0}
    factors_of_b = *(1..b).select {|n| b % n == 0}
    result = factors_of_a.select {|x| factors_of_b.include?(x)} 
    if result.include?(1) && result.length == 1
        return true
    end
    return false
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, a, b, expected)
    actual = is_coprime?(a, b)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, 25, 12, true)
    check_solution(2, 7, 11, true)
    check_solution(3, 30, 9, false)
    check_solution(4, 6, 24, false)
end

# Execute the tests.
run_tests()