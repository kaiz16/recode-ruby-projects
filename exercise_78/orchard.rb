class FruitOrchard
    @@trees = []
    def initialize(tree)
        @@trees << tree
    end

    def self.age!
        @@trees.each do |tree|
            tree.age!
        end
    end

    def self.trees 
       trees_all = [apple_trees(),orange_trees(),pear_trees()] # This will get a sorted array of trees 
       age_ranges = [[1,10],[11,20],[21,30],[31,40],[41,50],[51,60],[61,70],[71,80],[81,90],[91,100]]
       tree_ages = "Age  \t\t 1-10 \t 11-20 \t 21-30 \t 31-40 \t 41-50 \t 51-60 \t 61-70 \t 71-80 \t 81-90 \t 91-100"
       
       trees_all.each do |fruit_tree|
        next if fruit_tree.empty?
        tree_ages += "\n" + fruit_tree[0].tree_type + " tree"
            age_ranges.each do |age|
                tree_ages += "\t  " + fruit_tree.count{|tree| tree.age >=age[0] && tree.age <= age[1]}.to_s
            end
        end

       fruits = "\t\tApples\t\tOranges\t\tPears\nFruits"
       
       trees_all.each do |fruit_tree|
        fruits_count = 0
           fruit_tree.each do |tree|
                fruits_count += tree.fruits.length
           end
           fruits += "\t\t" + fruits_count.to_s 
       end
       puts tree_ages + "\n\n" + fruits
       puts 
       puts mature_trees()
       puts 
       puts dead_trees()
       puts
       puts "Total trees : " + @@trees.length.to_s
    end

    def self.apple_trees(tree_param = @@trees)
        return tree_param.select {|tree| tree.tree_type == "Apple"}
    end

    def self.orange_trees(tree_param = @@trees)
        return tree_param.select {|tree| tree.tree_type == "Orange"}
    end

    def self.pear_trees(tree_param = @@trees)
        return tree_param.select {|tree| tree.tree_type == "Pear"}
    end

    def self.mature_trees
        mature_trees = @@trees.select{|tree| tree.age >= tree.age_of_maturity}
        return "Matured apple trees : #{apple_trees(mature_trees).count}", 
               "Matured orange trees : #{orange_trees(mature_trees).count}",
               "Matured pear trees : #{pear_trees(mature_trees).count}",
               "Total matured trees : #{mature_trees.count}"
    end

    def self.dead_trees
        dead_trees = @@trees.select{|tree| tree.dead}
        return "Dead apple trees : #{apple_trees(dead_trees).count}", 
               "Dead orange trees : #{orange_trees(dead_trees).count}",
               "Dead pear trees : #{pear_trees(dead_trees).count}",
               "Total dead trees : #{dead_trees.count}"
    end
end

class FruitTree < FruitOrchard
     attr_accessor :age, :fruits, :height, :dead
     attr_reader :tree_type
     def initialize(tree_type)
         @age = 1
         @tree_type = tree_type
         @height = 1
         @fruits = []
         @dead = false
         super(self) # Make a tree and add it to FruitOrchard class's variable
     end
 
     def age!
         if age >= max_age
             self.dead = true
             return
         end
         self.age += 1
         self.height += growth_rate if height < max_height
         if age >= age_of_maturity
             rand(annual_fruit_yield[0]..annual_fruit_yield[1]).times do 
                self.fruits << grow_fruits 
            end
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
     attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity, :annual_fruit_yield
     def initialize
         super("Apple")
         @max_age = 45
         @max_height = 26
         @growth_rate = 2
         @age_of_maturity = 5
         @annual_fruit_yield = [400, 600]
     end
 
     def grow_fruits
         Apple.new()
     end
 end
 
 class OrangeTree < FruitTree
     attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity, :annual_fruit_yield
     def initialize
         super("Orange")
         @max_age = 100
         @max_height = 25
         @growth_rate = 2.5
         @age_of_maturity = 6
         @annual_fruit_yield = [100, 300]
     end
 
     def grow_fruits
         Orange.new()
     end
 end
 
 class PearTree < FruitTree
     attr_reader :max_age, :max_height, :growth_rate, :age_of_maturity, :annual_fruit_yield
     def initialize
         super("Pear")
         @max_age = 40
         @max_height = 20
         @growth_rate = 2.5
         @age_of_maturity = 5
         @annual_fruit_yield = [175, 225]
     end
 
     def grow_fruits
         Pear.new()
     end
 end

trees = []
rand(20..30).times do # Plant 20 to 30 trees
    trees << AppleTree.new()
end
rand(20..30).times do # Plant 20 to 30 trees
    trees << PearTree.new()
end
rand(20..30).times do # Plant 20 to 30 trees
    trees << OrangeTree.new()
end

trees.each do |tree| 
    until tree.any_fruits?
        tree.age!
    end
end

FruitOrchard.age!

puts FruitOrchard.trees