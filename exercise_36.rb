# Exercise 36
# Write a method, replace_elements!, that replaces elements in the array with their corresponding values from a hash
# Your method should accept an array and a hash as input.
# The method should mutate the given array by replacing elements with their corresponding values in the hash.
# The method should return the given array.
#
# Note: this method has a BANG!, thus, it must MUTATE the input array. 
# This means that the object_id of the input array should be identical to the object_id of the returned array. 

def replace_elements!(array, hash)
    hash.each do |item, replace_value| # go through hash 
        array.map! {|x| x == item ? replace_value : x} # if the hash's key is found in array, mutate it with hash's value
    end
    return array 
end

# Driver Code: Do not edit under this line

# check_solution runs a single test case and prints whether it was
# successful or not.
def check_solution(test_number, array, hash, expected)
    actual = replace_elements!(array, hash)
    if actual != expected
        puts "Test ##{test_number}: Incorrect value: got #{actual}, expected #{expected}"
        return false
    end
    if array.object_id != actual.object_id
        puts "Test ##{test_number}: Incorrect, must mutate original value"
        return false
     end

    puts "Test ##{test_number}: Correct"
    return true
end

# run_tests runs each of the test cases.
def run_tests()
    check_solution(1, [4, 2, 0, 2], {2=>"two", 0=>"zero", 5=>"five"}, [4, "two", "zero", "two"])
    check_solution(2, ["Matthias", "Simcha", "Mashu", "David"], {"Matthias"=>"J", "Mashu"=>"D"}, ["J", "Simcha", "D", "David"])
end

# Execute the tests.
run_tests()