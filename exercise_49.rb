# Exercise 49
# Given an input string with alphanumeric characters, extract the integers into a list and print them out in the order of occurrence.
# If there is a dash (-) immediately before a number, it will be deemed as a negative number and it is a different number from the positive
# Include the number of times the integer occured in total in the entire string for each integer

# Your output should be:
# The numbers found are:
# -23: 3 times
# 1: 3 times
# 578: 2 times
# -12: 3 times
# 7: 4 times
# 23: 1 time
# … etc

def extract_integer(input_string)
    integers = input_string.scan(/[-?0-9]+/) # scan through string to look for numbers
    result = {} # hash for final output
    p integers
    integers.each do |x| # pushing numbers and their appearances to hash 
        result[x] = integers.count(x)
    end
    result.each do |key,value| # print out the hashes
        puts "#{key}: #{value} times"
    end
end

input = "dS-23a1lt578jmnw-1n-23bsi-12p7nbh7asd23mbj578frew1a7oo903o7mk12arr909oposdf435rr"

extract_integer(input)