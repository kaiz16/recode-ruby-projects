# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the iterative linear search algorithm to return the position of the element where the target is found
# If no target is found, -1 should be returned
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations. You may use only for, while or until loops
# The recursive solution is not accepted for this exercise

# Write Your method code here
def linear_search(target, array)
    # 1) Set the starting index as 0
    # 2) Make a loop that runs array.length - 1 times
    # 3) On each interation, check for the value.
    # 4) If target is found, return index position of the target
    # 5) Else, increment the index by 1
    # 6) Repeat from step 3
    # 7) Return -1 when target is not found.
        index = 0
        while index <= array.length - 1
            return index if array[index] == target
            index += 1
        end
        return -1
    end
    
    # Driver Code: Do not edit under this line
    
    # check_solution runs a single test case and prints whether it was
    # successful or not.
    def check_solution(test_number, array, target, expected)
      actual = linear_search(array, target)
      if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
      end
    
      puts "Test ##{test_number}: Correct"
      return true
    end
    
    # run_tests runs each of the test cases.
    def run_tests
      check_solution(1, 18, [6,29,18,2,72,19,18,10,37], 2)
      check_solution(2, 9, [6, 29, 18, 2, 72, 19, 18, 10, 37], -1)
    end
    
    # Execute the tests.
    run_tests