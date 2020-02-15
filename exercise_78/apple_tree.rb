class NoAppleError < StandardError

end

class AppleTree
  attr_accessor :height, :age, :dead, :apple
  attr_reader :max_age, :max_height, :growth_rate
  def initialize
    @height = rand(20..30) # Inches
    @age = 1 
    @max_age = 45
    @max_height = 26
    @apple = []
    @dead = false
    @growth_rate = 2
  end

  def age! 
    if age >= max_age 
        self.dead = true
        return
    end
    self.age += 1
    self.height += growth_rate * 12  if (height / 12) < max_height 
    rand(10..30).times {self.apple << Apple.new} if age >= 5
  end

  def any_apples?
    return true if !apple.empty?
    return false
  end

  def pick_an_apple!
      if apple.empty?
        raise NoAppleError, "This tree has no apples." 
        return
      end
      self.apple.pop()
  end

  def dead?
     return dead
  end

end

class Apple # Apple and it's diameter in cm
    attr_reader :diameter
    def initialize
        @diameter = rand(5.0..7.0).round(1) 
    end 
end

tree = AppleTree.new

until tree.any_apples?
    puts "Tree is #{tree.age} years old and #{tree.height / 12} feet tall"
    tree.age! 
end
total_apple = 0
until tree.dead?
  basket = [] 

  while tree.any_apples?
    basket << tree.pick_an_apple!
  end
    total_apple += basket.length
    avg_diameter = (basket.map{|apple| apple.diameter}.inject{|acc, el| acc + el} / basket.length).round(1)

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/12} feet"
  puts "Harvest: #{basket.size} apples with an average diameter of #{avg_diameter} cm" 
  puts ""

  tree.age!
end

puts "Alas, the tree, she is dead!"
puts "Total apples produced: #{total_apple}"