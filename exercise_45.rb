# Exercise 45
# You will write a method, mystery_math that changes the first arithmetic operator (+, -, *, /) in a string 
# to a '?' and returns the resulting string.
# Your method should accept a string
# The method should return a string with the first arithmetic operator substituted with a ?
# You should not modify the original string

# Write Your method code here
def mystery_math(string)
  result = string
  return result.sub(/\*|\+|\-|\//,"?")
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = mystery_math(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, '4 + 3 - 5 = 2', '4 ? 3 - 5 = 2')
  check_solution(2, '(4 * 3 + 2) / 7 - 1 = 1', '(4 ? 3 + 2) / 7 - 1 = 1')
end

# Execute the tests.
run_tests()
