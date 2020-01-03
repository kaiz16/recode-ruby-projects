# You will write a method, bubble_sort(array), that accepts an array
# The method should use the bubble sort algorithm to return an array with its elements arranged in increasing order
# You may not use the Array#sort method in your solution

# Write Your method code here
def bubble_sort(array)
# 0) Check for array size, if array size is lesser than or equal to 1. Then there's no need to sort.
# 1) Make a loop that runs array.length time to sort all the items in the array. 
    # 1a) Make another loop that runs from index 0 to array.length - 2 (Because there's no value next to the last item) 
            # 1b) Check current index and next index
            # 1c) If current index is larger than next index, swap these two. (Bigger one moves to left, smaller one moves to right)
            # 1d) Repeat step 1a until index is equal to array.length - 2
    # 2a) Step 1 will be repeated for array.length time
# 2) Finally return an array
    return array if array.length <= 1 # Step 0
    array.length.times do # Step 1
        for i in 0..array.length - 2 # Step 1a
            if array[i] > array[i + 1] # Step 1b
                temp = array[i + 1] # Step 1c
                array[i + 1] = array[i] # Step 1c
                array[i] = temp # Step 1c
            end
        end
    end
    return array # Step 2
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = bubble_sort(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [2, 8, 5, 2, 6], [2, 2, 5, 6, 8])
    check_solution(2, [10, 8, 7, 1, 2, 3], [1, 2, 3, 7, 8, 10])
    check_solution(3, [1, -2, 5, 3, -4 ], [-4, -2, 1, 3, 5 ])
end

# Execute the tests.
run_tests()