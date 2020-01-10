def iterative_nth_fibonacci_number(n)
    sequence = [0,1]
    previous_number = 0
    current_number = 1
    while sequence.length <= n
        sequence.push(sequence[previous_number] + sequence[current_number])
        previous_number += 1
        current_number += 1
    end
    return sequence[n]
end

p iterative_nth_fibonacci_number(10)

# F(0) = 0, F(1) = 1
# F(n) = F(n - 1) + F(n - 2) if n > 1
def recursive_nth_fibonacci_number(n)
    return 0 if n == 0
    return 1 if n == 1
    return recursive_nth_fibonacci_number(n - 1) + recursive_nth_fibonacci_number(n - 2)
end

p recursive_nth_fibonacci_number(10)