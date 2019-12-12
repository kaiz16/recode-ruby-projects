# Exercise 24 - Squares of Evens
def square_of_evens(array)
    return array.select {|x| x % 2 == 0}.map!{|x| x * x}
end

p square_of_evens([-5, -2, 0, 1, 3, 4, 8])