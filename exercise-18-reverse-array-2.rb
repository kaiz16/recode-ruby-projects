# Exercise 18 - Reversing an Array (2)
a = [1, 2, 3, 4, 5]
def better_reverse(array)
    last_item = -1
    for i in 0..array.length - 1
        array.insert(i, array[last_item])
        array.delete_at(last_item)
    end
    return array
end

p better_reverse(a)

# lastItem = a.pop
# a.unshift(lastItem)
# return a.map do |x| 
#     count -= -x
# end