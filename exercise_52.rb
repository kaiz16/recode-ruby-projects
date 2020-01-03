# Write a method, linear_search(array, target), that accepts an array and another input as target
# The method should use the binary search algorithm to return the position of the element where the target is found
# You may not use any Array or Enum methods except length or size
# You may not use any Enum derived iterations, only for, while or until

def linear_search(target, searchfrom)
# 1) Set the starting index as 0
# 2) Make a loop that runs array.length - 1 times
# 3) On each interation, check for the value.
# 4) If target is found, return index position of the target
# 5) Else, increment the index by 1
# 6) Repeat from step 3
# 7) Return -1 when target is not found.
	index = 0
    while index <= searchfrom.length - 1
        return "Found #{target} at index #{index}" if searchfrom[index] == target
        index += 1
    end
    return false
end

random_numbers = [6,29,18,2,72,19,18,10,37]
p linear_search(18, random_numbers)
p linear_search(9, random_numbers)

