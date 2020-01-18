class OrangeTree
  attr_accessor :height, :age, :max_age, :dead
  def initialize
    @height = rand(8..12)
    @age = 1
    @max_age = 30
    @dead = false
  end

  def age! # Ages the tree by one year
    @age += 1
    @height += rand(1..4) if @age <= 10
    @dead = true if @age > @max_age 
  end

  def dead?
     return dead
  end

end

class Orange
    attr_reader :diameter
    def initialize
        @diameter = rand(2.7..3.0).round(1)
    end
end

tree = OrangeTree.new
until tree.dead?
    puts "Tree height is #{tree.height / 100.0} m"
    puts "Tree age is #{tree.age} years old"
    tree.age!
end