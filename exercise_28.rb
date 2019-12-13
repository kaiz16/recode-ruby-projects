# Exercise 28
# You will write a method, sum_of_evens to sum up all even numbers that are given to you
# Your method should accept an array of Integers
# The method should return the total of all the even numbers in the array added up
# You must use inject in this method

# Write Your method code here
def sum_of_evens(arr)
    arr.inject(0) do |acc, element|
         if element % 2 == 0 
              acc = acc + element
         else 
              acc
         end
    end
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = sum_of_evens(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [25, 18, 3, 81, 5, 20, 12], 50)
    check_solution(2, [30, 4, 8, 11, 45, 76, 29], 118)
    check_solution(3, [0, 1, 3, 5, 7, 9, 11, 13], 0)
    check_solution(4, [], 0)
end

# Execute the tests.
run_tests()