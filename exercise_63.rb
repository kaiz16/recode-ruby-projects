# Palindrome: Recursion
# Write a method, is_palindrome?, that accepts a number
# The method should use recursion to check if a number provided is a palindrome
# The method should return true or false
# You can create additional nested methods

def is_palindrome?(input)
	# input = input.to_s
	# def is_palindrome_checker(input, counter, reversed="")
	# 	return reversed if counter < 0
	# 	reversed += input[counter]
	# 	is_palindrome_checker(input, counter - 1, reversed)
	# end

	# return true if is_palindrome_checker(input, input.length - 1) == input
	# return false

	input = input.to_s # Convert it to string
	last_word = input.length - 1 # Get the last character 
	first_word = 0 # Get the first character
	return true if last_word == first_word # Stop the recursion if last_word index == first_word index
		if input[last_word] == input[first_word] # Compare last character and first character
			return true if last_word == 1 # Return true if input is only two character
			is_palindrome?(input[(first_word + 1)...last_word]) # Repeat by slicing the characters
		else
			return false # Not a palindrome
		end
end

puts is_palindrome?(88) == true
puts is_palindrome?(12321) == true
puts is_palindrome?(7992) == false
puts is_palindrome?(7227) == true
