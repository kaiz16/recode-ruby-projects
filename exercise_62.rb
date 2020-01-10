# Prime Numbers: Recursion
# Write a method, is_prime?
# You have to determine what are the arguments required for is_prime
# The method should be used to determine if a number is a prime number recursively.

def is_prime?(n, index = 0)
	arr = (2...n).to_a
	
	return true if index >= arr.length
	return false if n % arr[index] == 0 
	is_prime?(n, (index + 1))
end

puts is_prime?(17) == true
puts is_prime?(15) == false
puts is_prime?(41) == true