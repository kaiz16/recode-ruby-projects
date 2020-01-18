# This is how you define your own custom exception classes
class NoOrangesError < StandardError

end

class OrangeTree
  attr_accessor :height, :age, :max_age, :dead, :oranges
  def initialize
    @height = rand(20..30) # Start at 20-30 cm tall
    @age = 1 
    @max_age = rand(35..40) # Randomize max age
    @oranges = []
    @dead = false
  end

  def age! # Ages the tree by one year
    @age += 1
    @height += rand(80..120) if @age <= 10 # Height only increase for the first 10 years (in cm)
    @dead = true if @age > @max_age # Tree is dead once it reaches max_age
    if @age > 3 # Start growing oranges after 3 years
        rand(10..30).times {@oranges << Orange.new} # Grow 10 to 30 oranges each time
    end
  end

  def any_oranges?
    return true if !@oranges.empty?
    return false
  end

  def pick_an_orange!
      if @oranges.empty?
        raise NoOrangesError, "This tree has no orange. Age the tree by #{3 - @age} years" 
        return
      end
      @oranges.pop()
  end

  def dead?
     return dead
  end

end

class Orange # Orange and it's diameter
    attr_reader :diameter
    def initialize
        @diameter = rand(6.0..8.0).round(1) 
    end 
end

tree = OrangeTree.new

until tree.any_oranges?
    puts "Tree is #{tree.age} years old and #{tree.height} cm tall"
    tree.age! 
end
total_orange = 0
until tree.dead?
  basket = [] 

  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end
    total_orange += basket.length
    #It's up to you to calculate the average diameter for this harvest.
    avg_diameter = (basket.map{|orange| orange.diameter}.inject{|acc, el| acc + el} / basket.length).round(1)

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height/100.0} m"
  puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm" 
  puts ""

  #Age the tree another year
  tree.age!
end

puts "Alas, the tree, she is dead!"
puts "Total oranges produced: #{total_orange}"