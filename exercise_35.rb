# Exercise 35
# Write a method, rotate_array! that duplicates what Array.rotate! does
# Your method should accept an Array and an optional Integer
# The method should mutate the array by rotating the elements based on the number of times input (steps)
# If the steps is positive, the array will be rotated to the right, so the last element is now the first. This will be repeated for the steps
# If the steps is negative, the array will be rotated to the left, so the first element is now the last. This will be repeated for the steps
# If the steps is not provided, the array will rotated once to the right (Same as steps = 1)
# The method should return the given array
# You are not allowed to use Array#rotate or Array#rotate!
# 
# Note: this method has a BANG!, thus, it must MUTATE the input array. 
# This means that the object_id of the input array should be identical to the object_id of the returned array. 


def rotate_array!(array, steps)
    # Write Your method code here
    until steps <= array.length
        steps = steps - array.length
    end
    temp = array.slice!(steps, array.length - 1)
    for i in 0..temp.length - 1
        array.insert(i, temp[i])
    end
    return array
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, steps, array, expected)
    actual = rotate_array!(array, steps)
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
    check_solution(1, 2, ["Dog", "Rabbit", "Cat", "Hamster"], ["Cat", "Hamster", "Dog", "Rabbit"])
    check_solution(2, 7, ["NEW YORK", "TOKYO", "LONDON"], ["TOKYO", "LONDON", "NEW YORK"])
    check_solution(3, -3, ["grapes", "mango", "durian", "mangosteen"], ["mango", "durian", "mangosteen", "grapes"])
end

# Execute the tests.
run_tests()