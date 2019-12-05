num = 4
for i in 1..num do
    puts "***" * num + "*"
    print "*" 
    for j in 1..num do
        val = i * j
        if val < 10 
            print " #{val}*"
        elsif val <= 100
            print "#{val}*"
        else
            print "NON"
        end
        if j == num
            print "\n"
        end
    end
    if i == num 
        puts "***" * num + "*"
    end
end