# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "prime"
def largest_prime_factor(num)
    primes = []
    (2..num).each do |int|
        primes << int if prime?(int) && num % int == 0
    end
    return primes.last
end

def unique_chars?(string)
    string.each_char do |c|
        return false if string.count(c) > 1
    end
    return true
end

def dupe_indices(array)
    hash = Hash.new {|hash, key| hash[key] = []}
    array.each_with_index do |x, i|
        if array.count(x) > 1
            hash[x].push(i)
        end
    end
    return hash
end

def ana_array(array1, array2)
    return false if array1.length != array2.length
    difference = (array1 - array2 | array2 - array1).empty? ? true : false
    return difference
end