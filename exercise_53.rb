# You will write a method, element_swap!(array, index_1, index_2), that accepts an array and two integers as indices
# The method should swap the elements at the given indices and return the array.
# Note: this method has a BANG!, thus, it must MUTATE the input array. 
# This means that the object_id of the input array should be identical to the object_id of the returned array. 

# Write Your method code here
def element_swap!(array, index_1, index_2)
# 1) Store the first item in temporary variable (Temporary variable is needed to get the first item back)
# 2) Swap the first item with second item
# 3) Swap the second item with temporary variable
# 4) Return array
    temp = array[index_1]
    array[index_1] = array[index_2]
    array[index_2] = temp
    return array
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, index_1, index_2, expected)
    actual = element_swap!(array, index_1, index_2)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, ["a", "b", "c", "d"], 0, 2, ["c", "b", "a", "d"])
    check_solution(2, ["a", "b", "c", "d"], 3, 1, ["a", "d", "c", "b"])
    check_solution(3, ["coconut", "bahamas", "madison"], 1, 0, ["bahamas", "coconut", "madison"])
end

# Execute the tests.
run_tests()