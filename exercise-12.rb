# Exercise 12 - Print a Square
print "Square size ? "
size = gets.chomp.to_i
print "Which symbol do you want to use to draw a square ? ( default : = ) "
symbol = gets.chomp

def draw_a_square(size, symbol = "=")
    for i in 1..size do
        case i
        when 1
            puts symbol * size
        when size
            puts symbol * size
        else 
            puts symbol + " " * "#{size - 2}".to_i + symbol
        end
    end
end

!symbol.empty? ? draw_a_square(size, symbol) : draw_a_square(size)