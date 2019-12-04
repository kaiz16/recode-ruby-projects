# Exercise 8 - Greeter 3
print "Please enter your first name : " 
firstName = gets.chomp
print "Please enter your last name : " 
lastName = gets.chomp
print "Hello #{firstName} #{lastName}, How old are you? "
age = gets.chomp.to_i
print "Please enter your gender : "
gender = gets.chomp.downcase
def leapYear(year)
    return year % 4 == 0 || year % 100 == 0 && year % 400 == 0
end
    if gender == "male"
        if age < 20 
            puts "You're such a young boy!"
        elsif age >= 20 && age <= 40
            puts "How's work, mister?"
        else 
            puts "Wow! I admire your experience, sir!"
        end
    end
    if gender == "female"
        if age < 20 
            puts "You're such a young girl!"
        elsif age >= 20 && age <= 40
            puts "How's work, miss?"
        else 
            puts "Wow! I admire your experience, madam!"
        end
    end
    if age % 2 == 0
        puts "Your age is an even number!"
    else 
        puts "Your age is an odd number!"
    end
puts "You were born on #{2019 - age} year. That year was #{leapYear(2019 - age) ? "a leap year." : "NOT a leap year."}"