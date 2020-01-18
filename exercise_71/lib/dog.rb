class Dog
        attr_reader :name, :breed, :age, :bark, :favorite_foods
        def initialize(name, breed, age, bark, foods)
            @name = name
            @breed = breed
            @age = age
            @bark = bark
            @favorite_foods = foods
        end
        def age=(age)
            @age = age
            return self.bark.upcase! if age > 3
            return self.bark.downcase!
        end
        def favorite_food?(food)
            return self.favorite_foods.any?{|x| x.downcase == food.downcase}
        end
end