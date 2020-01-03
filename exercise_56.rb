# You will write a method, find_peaks(array), that accepts an array of integers
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbour.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbour

# Write Your method code here
def find_peaks(array)
    peaks = []
    for i in 0..array.length - 1
        case i 
        when 0
            peaks.push(array[i]) if array[i] > array[i + 1]
        when (array.length - 1)
            peaks.push(array[i]) if array[i] > array[i - 1]
        else
            peaks.push(array[i]) if array[i] > array[i - 1] && array[i] > array[i+1]
        end
    end
    return peaks
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = find_peaks(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [1, 3, 5, 4], [5])
    check_solution(2, [4, 2, 3, 6, 10], [4, 10])
    check_solution(3, [4, 2, 11, 6, 10], [4, 11, 10])
end

# Execute the tests.
run_tests()