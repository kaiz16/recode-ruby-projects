class FruitTree
    attr_accessor :age, :fruits, :height, :dead
    attr_reader :fruit_type
    def initialize(fruit_type)
        @age = 1
        @fruit_type = fruit_type
        @height = 1
        @fruits = []
        @dead = false
    end

    def age!
        if age >= max_age
            self.dead = true
            return
        end
        self.age += 1 
        self.height += growth_rate if height < max_height
        if age >= age_of_maturity
            10.times {self.fruits << grow_fruits}
        end
    end

    def any_fruits?
        return false if fruits.empty?
        return true
    end

    def pick_a_fruit
        return fruits.pop()
    end
end

class Fruit
    attr_reader :diameter
    def initialize
        @diameter = rand(6.0..8.0).round(1)
    end
end

class Apple < Fruit
    def initialize
        super
    end
end

class Orange < Fruit
    def initialize
        super
    end
end

class Pear < Fruit
    def initialize
        super
    end
end

class AppleTree < FruitTree
    attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity
    def initialize
        super("Apple")
        @max_age = 45
        @max_height = 26
        @growth_rate = 2
        @age_of_maturity = 5
    end

    def grow_fruits
        Apple.new()
    end
end

class OrangeTree < FruitTree
    attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity
    def initialize
        super("Orange")
        @max_age = 100
        @max_height = 25
        @growth_rate = 2.5
        @age_of_maturity = 6
    end

    def grow_fruits
        Orange.new()
    end
end

class PearTree < FruitTree
    attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity
    def initialize
        super("Pear")
        @max_age = 40
        @max_height = 20
        @growth_rate = 2.5
        @age_of_maturity = 5
    end

    def grow_fruits
        Pear.new()
    end
end

trees = []
trees << AppleTree.new()
trees << OrangeTree.new()
trees << PearTree.new()

year = 1
until trees.all? {|tree| tree.dead}
    puts "Year #{year}"
    trees.each do |tree| 
        puts "#{tree.fruit_type} Tree age is #{tree.age} and height is #{tree.height} feet and has #{tree.fruits.length} #{tree.fruit_type}s"
        tree.age!
    end
    puts "\n"
    year += 1
end