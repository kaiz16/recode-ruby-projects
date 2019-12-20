# Exercise 43
# You will write a method, url? to check if a given string looks like a URL
# Your method should accept a string
# The method should return true if the argument looks like a URL, false if it does not.

# Write Your method code here
def url?(text)
  if text.match(/\Ahttps?:\/\/\S+\z/)
      return true
  end
  return false
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = url?(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, "http://recodemalaysia.com", true)
  check_solution(2, "https://example.com", true)
  check_solution(3, "https://example.com hello", false)
  check_solution(4, "   https://example.com", false)
end

# Execute the tests.
run_tests()
