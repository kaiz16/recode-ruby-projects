# Exercise 30
# You will write a method, adult_in_group? to check if there is any person in the array who is an adult
# Your method shall accept an array containing people. Each person is represented as a hash.
# The method should return true if there is at least 1 person with an age of 18 or greater.
# The method should return false otherwise.

# Write Your method code here
def adult_in_group?(array)
        array.each do |x|
            if x[:age] >= 18
                return true
            end
        end
    return false
end

# Driver Code: Do not edit under this line


# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, expected)
    actual = adult_in_group?(array)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [
        {name: "Mars", age: 17},
        {name: "Hector", age: 21},
        {name: "Hera", age: 15},
        {name: "Artemis", age: 16}
    ], true)
    check_solution(2, [
        {name: "Myles", age: 12},
        {name: "Nona", age: 13},
        {name: "Terminus", age: 10},
        {name: "Erna", age: 16}
    ], false)
end

# Execute the tests.
run_tests()