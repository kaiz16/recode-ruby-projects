# You will write a method, is_sorted?(array), that accepts an array of integers
# The method should return true if the elements are in increasing order, false otherwise.
# You may not use the Array#sort method in your solution

# Write Your method code here
def is_sorted?(array)
# 1) Make a starting index and set it to 0
# 2) Make a loop that runs array.length - 1 times (There's no value next to the last item in the array)
# 3) On each iteration, check if the next item is greater than current index
# 4) Continue to step 6 if step 3 is true
# 5) Break and return false if step 3 is false
# 6) Increment index by 1 and repeat from step 3
# 7) Return true when the loop stops. (Because the loop will break and return false by itself if step 3 is false)
    index = 0
    while index < array.length - 1
        if array[index] > array[index + 1]
            return false 
        end
        index += 1
    end 
    return true
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = is_sorted?(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 4, 10, 13, 15], true)
    check_solution(2, [1, 4, 10, 10, 13, 15], true)
    check_solution(3, [1, 2, 5, 3, 4 ], false)
end

# Execute the tests.
run_tests()