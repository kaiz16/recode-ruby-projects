# You will write two methods:

# You will write a method is_prime? that takes in a number
# This method returns a boolean, indicating whether the number is prime. 
# Note: A prime number is only divisible by 1 and itself.

# The method pick_primes that takes in an array of numbers
# The method should return a new array containing only the prime numbers
# The method pick_primes should use the method is_prime?

def is_prime?(num)
    prime = []
    for i in 1..num 
        if num % i == 0
            prime = prime.push(i)
        end
    end
    if prime.include?(num) && prime.include?(1) && prime.length == 2
        return true
    end
    return false
end

def pick_primes(numbers)
    result = []
    numbers.each do |x|
        result = result.push(x) if is_prime?(x)
    end
    return result
end

print pick_primes([2, 3, 4, 5, 6]) == [2, 3, 5]
puts

print pick_primes([101, 20, 103, 2017]) == [101, 103, 2017]
puts