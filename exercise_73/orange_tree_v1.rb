class OrangeTree
  attr_reader :height, :age 
  def initialize
    @height = rand(8..12)
    @age = 1
  end

end

class Orange
    attr_reader :diameter
    def initialize
        @diameter = rand(2.7..3.0).round(1)
    end
end

tree = OrangeTree.new
orange = Orange.new
p tree.age
p orange.diameter