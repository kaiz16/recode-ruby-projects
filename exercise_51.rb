# You will write a method, binary search(array, target), that accepts an array and another input as target
# The method should use the iterative binary search algorithm to return the position of the element where the target is found
# If no target is found, -1 should be returned
# The recursive solution is not accepted for this exercise

# Write Your method code here
def binary_search(array, target)
    # 1) Make a low and high variable set it to starting index and ending index of the array
    # 2) Make a loop that runs while 'high' is greater than 'low'.
    # 3) Make a mid variable and set it to middle index of the array
    # 4) If array[middle] == target, then it's done
    # 5) Else target < array[middle], then look to the left set high to current middle - 1. Low stays unchanged
    # 6) Else target > array[middle], then look to the right set low to current middle + 1. High stays unchanged
    # 7) Repeat from step 2 until low becomes greater than high.
    # 8) Return -1 if value is not in the array.
        low = 0
        high = array.length - 1
        until low > high 
            mid = (low + high) / 2
            case target <=> array[mid]
            when 0 # Equal to
                return mid # Step 4
            when -1 # Less than
                high = mid - 1  # Step 5
            when 1 # Greater than
                low = mid + 1 # Step 6
            end
        end 
        return -1 # Step 8
    end
    
    # Driver Code: Do not edit under this line
    
    # check_solution runs a single test case and prints whether it was
    # successful or not.
    def check_solution(test_number, array, target, expected)
      actual = binary_search(array, target)
      if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
      end
    
      puts "Test ##{test_number}: Correct"
      return true
    end
    
    # run_tests runs each of the test cases.
    def run_tests
      check_solution(1, (100..200).to_a, 135, 35)
      check_solution(2, [13, 19, 24, 29, 32, 37, 43], 35, -1)
    end
    
    # Execute the tests.
    run_tests