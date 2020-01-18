## Classes: Orange Tree Simulator



### Implement the OrangeTree and Orange classes

- Use attr_reader, attr_writer, and/or attr_accessor so that we can call tree.height and tree.age to get a tree's height or age, respectively. Which of the three attr_ methods should you be using and why?
- Do the same with the Orange class so that we can call orange.diameter to get an orange's diamater.

Save a copy of this code as `orange_tree_v1.rb` . This version has to be submitted.

### Implement Aging

- As a tree ages, it grows taller. Eventually it starts bearing fruit and stops growing — not necessarily at the same time. Some years later, the tree dies and can bear fruit no more!

- Implement an OrangeTree#age! instance method that will age your tree one year. Each year the tree should get some amount taller, and then eventually stop growing. You can decide when the tree stops growing.

- Later, it should die. At this point your OrangeTree class should:

 1. Have an OrangeTree#height method which returns the tree's current height
 2. Have an OrangeTree#age method which returns the tree's current age
 3. Have an OrangeTree#age! method which ages the tree one year and grows the tree a little, if it's able to grow
 4. Have an OrangeTree#dead? method which returns true if the tree has died

Save a copy of this code as `orange_tree_v2.rb` . This version has to be submitted.

### Implement Orange-picking

- After some number of years — you decide — the orange tree starts to bear fruit. Write a method OrangeTree#any_oranges? which returns true if there are any oranges on the tree and false otherwise.
- Also write a method OrangeTree#pick_an_orange! which will return one of the oranges on the tree (an instance of the Orange class). If you try to pick an orange when there are no oranges left, your code should raise a NoOrangesError (defined in the source code).
- You'll also have to implement the Orange class at this point, including Orange.new and Orange#diameter.

Save a copy of this code as `orange_tree_v3.rb` . This version has to be submitted.

### Implement Realistic Stats

- Modify your orange tree to use these stats. Use your discretion on implementing the randomness for the last two items
- [Orange trees live up to around 40 years](http://homeguides.sfgate.com/long-orange-trees-produce-fruit-60137.html)
- [Orange trees start at 8-12 inches (20cm)](https://www.fourwindsgrowers.com/our-citrus-trees/citrus-variety-info-chart.html)
- [Orange tree heights increases for first 10 years+](http://homeguides.sfgate.com/long-reach-full-size-dwarf-navel-orange-tree-43660.html)
- [Orange trees bear 700-1250 fruits each time](http://faitc.org/wp-content/uploads/2013/08/Producing-Citrus-in-Florida2.pdf)
- [Orange tree height increases around 80cm to 120cm on average a year ](http://homeguides.sfgate.com/long-reach-full-size-dwarf-navel-orange-tree-43660.html)
- [Orange tree bears fruits from 2nd/3rd year onwards](http://homeguides.sfgate.com/long-reach-full-size-dwarf-navel-orange-tree-43660.html)
- Realistic orange trees also can die randomly (from diseases, or other causes)
- Realistic orange trees has a higher chance of dying as it gets older

Save a copy of this code as `orange_tree_v4.rb` . This version has to be submitted.

You will continue to expand on the orange tree in later exercises.