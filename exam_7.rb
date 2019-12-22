# You will write a method, combinations that takes in an Array of unique elements
# The method should return a 2D array representing all possible combinations of 2 elements of the array.

def combinations(arr)
    result = []
    for i in 0..arr.length - 1
        break if i == arr.length - 1
        for j in i+1..arr.length - 1
            result = result.push([arr[i] , arr[j]])
        end
    end
    return result
end

print combinations(["a", "b", "c"]) == [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]) == [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts