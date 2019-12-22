# You will write a method, pairs_to_zero that takes in an array of unique numbers. 
# The method should return the number of pairs of elements that sum to 0.

def pairs_to_zero(nums)
    result = 0
    nums.each do |x|
        if nums.include?(-1 * x) && x > 1
            result += 1
         end
    end
    return result
end

puts pairs_to_zero([ 2, 5, 11, -5, -2, 7 ]) == 2
puts
puts pairs_to_zero([ 21, -23, 24 -12, 23 ]) == 1
puts