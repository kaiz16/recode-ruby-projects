# Exercise 44
# You will write a method, fields to return all the fields in a haphazardly formatted string. 
# A variety of spaces, tabs, and commas separate the fields, with possibly multiple occurrences of each delimiter.
# Your method should accept a string
# The method should return an array of the fields

# Write Your method code here
def fields(text)
  return text.gsub(/[\s,]/, " ").split(" ") # first substitute whitespaces and commas with single whitespace then split.
  #return text.split(/,|\s+,?\s+/)
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = fields(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, 'Pete,201,Student', ['Pete', '201', 'Student'])
  check_solution(2, "Pete \t 201    ,  TA", ['Pete', '201', 'TA'])
  check_solution(3, "Pete \t 201", ['Pete', '201'])
end

# Execute the tests.
run_tests()
