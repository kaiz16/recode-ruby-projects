#Exercise 23 - Dutch National Flag Problem
def segregate(array)
count = [0, 0] # index[0] is 0, index[1] is 9
    array.each do |x| # count how many 0s and 9s are there
        if x == 0
            count[0] += 1
        elsif x == 9
            count[1] += 1
        end
    end
    for i in 0..array.length - 1 # set 0s to left, and 9s to right
        if count[0] != 0
            array[i] = 0
            count[0] -= 1
        elsif count[1] != 0
            array[i] = 9
            count[1] -= 1
        end
    end
    return array
end

p segregate([0,9,0,9,9,0,9,0])