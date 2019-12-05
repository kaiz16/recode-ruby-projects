# Exercise 10 - Time converter
# The day starts at 0000 and ends at 2359; there is no 2400 notation. (from Google)
puts "Enter time in military format (eg: 2345)"
time = gets.chomp

if time[0..1].to_i <= 12
    puts "#{time} in military time is #{time[0..1]}:#{time[2..-1]} AM"
else 
    puts "#{time} in military time is #{time[0..1].to_i - 12}:#{time[2..-1]} PM"
end