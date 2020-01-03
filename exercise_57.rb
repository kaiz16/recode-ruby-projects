# Write a method, global_linear_search(array, target), that accepts an array and another input as target
# The method should use the linear search algorithm to return an array of all the positions of the element where the target is found
# You may not use any Array or Enum methods except length, size or empty?
# You may not use any Enum derived iterations, only for, while or until

# Write Your method code here
def global_linear_search(array, target)
    result = []
    index = 0
    while index <= array.length - 1
        result.push(index) if array[index] == target
        index += 1
    end
    return result
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, target, expected)
    actual = global_linear_search(array, target)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, "bananas".split(""), "a", [1,3,5])
    check_solution(2, "enumerables".split(""), "e", [0,4,9])
    check_solution(3, "united states of america".split(""), "a",[9, 17, 23])
end

# Execute the tests.
run_tests()
