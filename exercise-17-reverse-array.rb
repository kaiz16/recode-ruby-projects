# Exercise 17 - Reversing an Array
array = [1,2,3,4,5,6,7]
def reverse_array(array)
    last_item = -1
    reversed = []
    array.each do |i|
        reversed = reversed.push(array[last_item])
        last_item -= 1
    end
    return reversed
end

p reverse_array(array)