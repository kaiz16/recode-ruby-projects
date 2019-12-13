# Exercise 34
# You will write a method, scalar_multiple!, that will perform a scalar multiplication of an array's elements with a multiplier
# Scalar multiplication is a linear algebra operation - https://en.wikipedia.org/wiki/Scalar_multiplication
# Your method should accept an Integer and an Array as input
# The method should mutate the given array by multiplying all of the elements by the multiplier
# The method should return the given array
# 
# Note: this method has a BANG!, thus, it must MUTATE the input array. 
# This means that the object_id of the input array should be identical to the object_id of the returned array. 

# Write Your method code here
def scalar_multiple!(array, multiplier)
    return array.map! {|x| x * multiplier}
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, multiplier, expected)
    actual = scalar_multiple!(array, multiplier)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end
    if array.object_id != actual.object_id
        puts "Test ##{test_number}: Incorrect, must mutate original value"
        return false
     end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [7, 0, 4], 3, [21, 0, 12])
    check_solution(2, [90, 30, 4, 12], 0.5, [45.0, 15.0, 2.0, 6.0])
    check_solution(3, [4, 48, 39, 7.2, 62.5, 12.4], 6, [24, 288, 234, 43.2, 375.0, 74.4])
end

# Execute the tests.
run_tests()