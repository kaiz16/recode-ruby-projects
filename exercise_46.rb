# Exercise 46
# You will write a method, danish that changes the first occurrence 
# of the word apple, blueberry, or cherry in a string to danish.
# Your method should accept a string
# The method should return a string

# Write Your method code here
def danish(string)
  return string.sub(/\b(apple|blueberry|cherry)\b/, "danish")
end
# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, argument, expected)
  actual = danish(argument)
  if actual != expected
    puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
    return false
  end

  puts "Test ##{test_number}: Correct"
  return true
end

# run_tests runs each of the test cases.
def run_tests()
  check_solution(1, "An apple a day keeps the doctor away", "An danish a day keeps the doctor away")
  check_solution(2, "My favourite is blueberry pie", "My favourite is danish pie")
  check_solution(3, "The cherry of my eye", "The danish of my eye")
  check_solution(4, "apple. cherry. blueberry.", "danish. cherry. blueberry.")
  check_solution(5, "I love pineapple", "I love pineapple")
end

# Execute the tests.
run_tests()
