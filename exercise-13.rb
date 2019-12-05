# Exercise 13 - Print a Triangle
print "Enter a size of a triangular : "
size = gets.chomp.to_i
def draw_a_triangle(size)
    for i in 1..size do
        puts "*" * i
    end
end

draw_a_triangle(size)