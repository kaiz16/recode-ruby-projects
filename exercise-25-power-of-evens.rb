# Exercise 25 - Nth Power of Evens
def power_of_evens(array, power)
    evens = array.select {|num| num % 2 == 0}
        if !evens.empty?
            return evens.map! {|x| x ** power}
        end
    return "Your array does not contain even numbers"
end

print power_of_evens([-5, -7, 3, 0, 2, 7, 7], 3)