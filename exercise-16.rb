# Exercise 16 - FizzBuzz
def divisableBy(n, d)
    return n % d == 0
end 

for n in 1..100 do
    if divisableBy(n, 3) && divisableBy(n, 5)
        print "FizzBuzz "
    elsif divisableBy(n, 5)
        print "Buzz "
    elsif divisableBy(n, 3)
        print "Fizz "
    else 
        print "#{n} "
    end
end