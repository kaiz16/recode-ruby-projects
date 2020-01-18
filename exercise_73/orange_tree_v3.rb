# This is how you define your own custom exception classes
class NoOrangesError < StandardError

end

class OrangeTree
  attr_accessor :height, :age, :max_age, :dead, :oranges
  def initialize
    @height = rand(5..10)
    @age = 1
    @max_age = 20
    @oranges = []
    @dead = false
  end

  def age! # Ages the tree by one year
    @age += 1
    @height += rand(5..10) if @age <= 10 # Height only increase for the first 10 years
    @dead = true if @age > @max_age 
    if @age > 3 # Starts growing after 3 years
        rand(1..3).times {@oranges << Orange.new} # Grow 1 to 3 oranges each time
    end
  end

  def any_oranges?
    return true if !@oranges.empty?
    return false
  end

  def pick_an_orange!
      if @oranges.empty?
        raise NoOrangesError, "This tree has no orange." 
        return
      end
      @oranges.pop()
  end

  def dead?
     return dead
  end

end

class Orange
    attr_reader :diameter
    def initialize
        @diameter = rand(6.0..8.0).round(1) 
    end
end
