## Exercise 11 - Countdown
def askForNum(msg) 
    print msg
    return gets.chomp.to_i
end
num = askForNum("Enter a negative or positive number : ") 
until num != 0 && num.is_a?(Integer) # Repeat until user entered a valid number
    num = askForNum("Enter only negative or positive number : ")
end
    if num > 0 # Positive number
        while num >= 0
            puts num
            num = num - 1
            sleep(0.3)
        end
    elsif num < 0 # Negative number
        while num <= 0
            puts num
            num = num + 1
            sleep(0.3)
        end
    end