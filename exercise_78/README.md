# Model an Orchard of Different Fruit Trees

## Summary
In a previous exercise, we modeled an orange tree.  We were able to model the production of an orange tree over the course of its lifetime.  The client was satisfied enough with our work that they are engaging us for another project.  The client's orange farm is considering buying over the neighboring fruit orchard, an orchard that includes varieties of trees beyond orange trees.

We're going to build a simple model of an orchard.  We'll begin with our orange tree and use it as a pattern for modeling an apple tree.  We will then abstract the two tree classes to a corresponding fruit class.  After that, we'll add an additional tree type:  pear trees.  Finally, we'll model the entire fruit orchard.


### Inheritance
When we use *inheritance* to eliminate the repetition that exists in our `OrangeTree` and `AppleTree` classes, the process is called *refactoring*.  We'll create a general `FruitTree` class, from which we can create more specific classes of trees:  orange, apple, and later pear.  Our generic fruit tree model will provide the basic behaviors of our trees: they grow, they mature, they die, etc.  The orange, apple, and pear trees will share the same basic behaviors, but each will differ in its implementation: one tree produces oranges, another apples; one tree dies at age 100, another at 45; and so on.  
You will set the parameters for each type of tree to the following:

|                    | orange trees | apple trees | pear trees |
| ------------------ | -----------: | ----------: | ---------: |
| maximum height     | 25           | 26          | 20         |
| growth rate        | 2.5          | 2           | 2.5        |
| annual fruit yield | 100 - 300    | 400 - 600   | 175 - 225  |
| age of maturity    | 6            | 5           | 5          |
| age of death       | 100          | 45          | 40         |
| type of fruit      | oranges      | apples      | pears      |

*Table 1*.  Data for orange, apple, and pear trees.



## Releases
### Part 0:  Copy the Orange Tree Model
Before we begin, copy the code from the Orange Tree exercise.  Do not reuse the same folder.  Bring over both the code for the orange tree and the orange fruit.


### Part 1A: Apples and Apple Trees
We have an `OrangeTree` class with methods like `#age`, `#mature?`, `#dead?`, etc.  We are going to create an `AppleTree` class that copies this exact interface.  In other words, the messages that we send to an orange tree will be the same that we send to an apple tree.

However, while orange trees and apples trees will have the same behaviors, they will have different life cycles.  They'll produce fruit at different ages, grow at different rates, die at different ages, etc.  The particulars for each tree type can be found in Table 1.

Implement the class `AppleTree`.  Don't forget to create an `Apple` class as well - we wouldn't want an apple tree that produces oranges.



### Part 1B: From Specific Types to a General Type
We have now modeled two specific types of fruit tree.  Our orange and apple trees behave very similarly.  Based on the similarities in behavior among the two types of tree, we can create a more generalized case: a fruit tree.

We can create a `FruitTree` class with generalized behaviors.  Our `OrangeTree` and `AppleTree` classes can inherit behaviors from this general class and implement their own specifics.  For example, both orange trees and apple trees have a height.  With each passing season, the trees grow by some amount until they reach a maximum height.  This is the general behavior that can be represented in a general fruit tree model.  That general behavior would be inherited by each of the specific types of fruit tree with each specific type defining how much it grows each year and its own maximum height.


```ruby
class FruitTree
  # define the class
end

class OrangeTree < FruitTree
  # define the class
end

class AppleTree < FruitTree
  # define the class
end
```
*Figure 1*. Defining `OrangeTree` and `AppleTree` classes which inherit from a `FruitTree` superclass or parent class.


Define a `FruitTree` class and modify the `OrangeTree` and `AppleTree` classes to inherit from it (see Figure 1).  Slowly move the shared behaviors from the specific trees to the general tree.  Similarly, implement a `Fruit` class and do the same for our fruit classes.


### Part 1C: Pears and Pear Trees
Now that we have a generalized fruit tree model from which we can derive specific types of trees, we'll take advantage of this by creating an additional tree type:  `PearTree`.


### Part 2: Model the Fruit Orchard

|                  | Age 0 | Age 5 | Age 20 | Age 37 | Age 50 | Total Count |
| :--------------- | ----: | ----: | -----: | -----: | -----: | ----------: |
| **orange trees** | 0     | 20    | 20     | 10     | 20     | 70          |
| **apple trees**  | 10    | 10    | 20     | 20     | 5      | 65          |
| **pear trees**   | 10    | 0     | 10     | 20     | 10     | 50          |


*Table 2*.  The number of trees in the orchard by type and age.


Now that we have a model for each tree type in the orchard, let's build a model of the orchard.  Data for the orchard's trees is in Table 2.  We can see how many trees are in the orchard, their types, and their ages.  Using orange trees as an example, the orchard has a total of 70 orange trees.  20 of the orange trees are five years old, 20 of the orange trees are 20 years old, ten of the orange trees are 37 years old, and 20 of the orange trees are 50 years old.

Define a `FruitOrchard` class that will be responsible for managing the trees in the grove.  Here is a list of some initial behaviors for the class.

1. A fruit orchard can be initialized with an array of trees.
2. A fruit orchard can return different subsets of its trees:  all the trees, just trees of one type, just trees that are mature, etc.
3. When a fruit orchard passes a year, each of its trees passes a year.

*Hint:* We might want to edit our trees.  For example, we might want to initialize them with a given age and height.


### Bonus:  Model Expected Production
It's time to put our models to use.  The client wants us to generate a report of the grove's expected production over the next 10 years (10 growing seasons).  For each year, our report should specify:
1. how many oranges, apples, and pears our model would expect to be produced each year
2. The average size of each type of fruit
3. For each type of tree, we should detail how many immature, mature, dead and total trees are in the grove.

The report should be formatted like below:

#### Example Report

This is an example of the type of output that the client wants.  We do not need to build an exact copy, as long as all of the required information is present.  Our production values (i.e., the number of fruit and their sizes) will vary because the number of fruit a tree produces each year and their sizes are somewhat random. 

```
YEAR 1
- Orange Trees: 70 trees (immature: 20, mature: 50, dead: 0)
  Expected to produce around 10,000 oranges, average diameter of 2.8.

- Apple Trees: 65 trees (immature: 10, mature: 50, dead: 5)
  Expected to produce around 25,000 apples, average diameter of 3.2.
  
- Pear Trees: 50 trees (immature: 10, mature: 30, dead: 10)
  Expected to produce around 6,000 pears, average diameter of 2.6.


YEAR 2

# Report Continues ...

YEAR 10
- Orange Trees: 70 trees (immature: 0, mature: 70, dead: 0)
  Expected to produce around 14,000 oranges, average diameter of 2.7.

- Apple Trees: 65 trees (immature: 0, mature: 40, dead: 25)
  Expected to produce around 20,000 apples, average diameter of 3.3.
  
- Pear Trees: 50 trees (immature: 0, mature: 20, dead: 30)
  Expected to produce around 4,000 pears, average diameter of 2.5.
```
