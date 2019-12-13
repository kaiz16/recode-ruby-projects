# Exercise 31
# You will write a method, filter_lengths, that filters an array of strings to a minimum length that is also provided
# Your method should accept an array of strings and an Integer as the length. 
# The method should return an array containing the strings that have at least the given length.
# The length argument should be optional - if no length is provided, then 5 should be used as the length.

# Write Your method code here
def filter_lengths(arr, length=5)
    result = []
        arr.inject(length) do |acc, el|
            if el.length >= acc
                result = result.push(el)
            end
            acc
        end
    return result
end

# Driver Code: Do not edit under this line

# check_solution_1 runs a single test case and prints whether it was
# successful or not.
def check_solution_1()
    actual = filter_lengths(["pear", "dragonfruit", "fig", "pineapple"], 4)
    expected = ["pear", "dragonfruit", "pineapple"]
    if actual != expected
        puts "Test #1: Incorrect value: got #{actual}, expected #{expected}"
        return
    end

    puts "Test #1: Correct"
end

# check_solution_2 runs a single test case and prints whether it was
# successful or not.
def check_solution_2()
    actual = filter_lengths(["pear", "dragonfruit", "fig", "pineapple"])
    expected = ["dragonfruit", "pineapple"]
    if actual != expected
        puts "Test #2: Incorrect value: got #{actual}, expected #{expected}"
        return
    end

    puts "Test #2: Correct"
end

# check_solution_3 runs a single test case and prints whether it was
# successful or not.
def check_solution_3()
    actual = filter_lengths(["cat", "dog", "capybara", "mouse"], 7)
    expected = ["capybara"]
    if actual != expected
        puts "Test #3: Incorrect value: got #{actual}, expected #{expected}"
        return
    end

    puts "Test #3: Correct"
end

# check_solution_4 runs a single test case and prints whether it was
# successful or not.
def check_solution_4()
    actual = filter_lengths(["cat", "dog", "capybara", "mouse"])
    expected = ["capybara", "mouse"]
    if actual != expected
        puts "Test #4: Incorrect value: got #{actual}, expected #{expected}"
        return
    end

    puts "Test #4: Correct"
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution_1()
    check_solution_2()
    check_solution_3()
    check_solution_4()
end

# Execute the tests.
run_tests()