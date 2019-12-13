# Exercise 27 - Array to Hash
data_arr = [
    ["Name", "Position", "Age", "Salary"],
    ["Adrian Lim", "Salesperson", "24", "RM2000"],
    ["John Smith", "Clerk", "31", "RM2300"],
    ["Shafie Abdullah", "Manager", "27", "RM3000"]

]

def convert_to_hash(array)
hash_table = []
    for i in 1..array.length - 1 # Creating 3 hashes. (First item of array must be key, so only 3 hash is needed)
        hash_table.push({})
    end
    for i in 0..hash_table.length - 1 # looping through this newly created hash
        value = array[i + 1] # First item of array is going to be key, so going to next item for values and store an array of values.
        for j in 0..array[0].length - 1 # getting keys at 0 index of array
            hash_table[i][array[0][j]] = value[j] # set a corresponding key and value at result
        end
    end
    return hash_table
end

p convert_to_hash(data_arr)