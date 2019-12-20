# Exercise 47
# You will write a method, format_date that changes dates in the format 2019-06-17 
# to the format 17.06.2019. You must use a regular expression.
# Your method should accept a string
# The method should return a string

# Write Your method code here
def format_date(date)
  if date.match(/-/)
      date = date.gsub(/-/,"")
      return date.gsub(/(\d\d\d\d)(\d\d)(\d\d)/, '\3.\2.\1')
      # date = date.gsub(/-/,".")
      # year = date.match(/\d{4}/).to_s
      # month = date.match(/\.\d{2}\./).to_s
      # day = date.match(/\d{2}\z/).to_s
      # return day+month+year
  end
  return date
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = format_date(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, "2019-06-17", "17.06.2019")
  check_solution(2, "2019/06/17", "2019/06/17")
end

# Execute the tests.
run_tests()
