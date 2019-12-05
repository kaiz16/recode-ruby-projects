# Exercise 15 - Hot or Cold?
randomNumber = rand(1..100)
print "Guess the random number between 1 and 100 : "
loop do
    userNum = gets.chomp.to_i
    if userNum < randomNumber
        print "Hotter, guess again : "
    elsif userNum > randomNumber
        print "Colder, guess again : "
    else
        puts "Good job you got it. The random number was #{randomNumber}"
        break
    end
end