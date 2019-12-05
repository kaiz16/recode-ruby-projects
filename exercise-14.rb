# Exercise 14 - Multiplication Table
print "Input number : "
num = gets.chomp.to_i
def print_a_table(num)
row = "" 
for i in 1..num do
    for j in 1..num do
         val = i * j
         if val < 10 
            row = "#{row} #{val}*"
         elsif val < 1000
            row = "#{row}#{val}*"
         else
            row = "#{row}NON*"
         end
         if j == num 
             puts "*" * row.length + "*"
             puts "*#{row}" # with length #{row.length}
            if i == num
                puts "*" * row.length + "*"
            end
             row = ""
         end
    end
end
end
print_a_table(num)