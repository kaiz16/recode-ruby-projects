# Boggle Board Revisited: Word Checker

## Summary

Using your basic `BoggleBoard` generator from before, we're now going to model a person checking whether a given word is on the Boggle board or not.

The only rule is that the same dice can't be reused in the same word, i.e., the "word path" can't ever cross itself.

We'll implement a `BoggleBoard#include?` method which can be called like this:

```ruby
board.include?("apple") # => true or false, depending
```

**Note**: This method won't care whether the input is *actually* a word in a dictionary. It will just tell your whether the string, as its input, is on the Boggle board.

## Releases

### Part 0 : Pseudocode for `BoggleBoard#include?`

Take a step back. Breathe. You want to jump right in and start writing code. Don't! It's a trap!

Get a pen and paper and draw out a 4-by-4 Boggle board. Imagine it filled with letters. Or actually fill it with letters if you like–maybe using your Boggle board generator.

Use [randomwordgenerator](https://randomwordgenerator.com/) to generate several words of 5 length and try to find it on the board. It might help if the word is gibberish and not English so that you're forced to check letter-by-letter and can short-circuit the English-reading part of your brain.

As clearly and precisely as you can reflect your internal mental process. Draw it, verbalize it, or do whatever is easiest for you, but make sure you are clear about it.

Initially, let's do a simpler, less interesting version of Boggle. Instead of being able to string together letters that are connected in any direction, let's just focus on words that appear in a **continuous line** vertically, horizontally, and diagonally. (Remember, only words 3 or more letters count!)

Write pseudocode for your algorithm.

How do your stylistic approaches compare? Your respective vocabulary? The overall structure and strategy of your approach?

### Part 1 : Implement `BoggleBoard#include?` in Ruby

Your job is now to just translate your pseudocode into Ruby.

What new instance methods do you need to define? Would your algorithm be easier to implement if your board were stored differently?

For example, what are the tradeoffs between storing the board as a 4x4 array of arrays versus a single 16-element array?

### Part 2 : Going Deeper

Implementing your algorithm for the real boggle rules! The words don't have to be in continuous lines, they can be connected in any way, diagonally, vertically, horizontally, in any order. Words can snake themselves across the board in any way.

What do you need to change to accommodate this added requirement? Does it make sense to change the structure of your board? Again, model this before coding, make sure you are aware of all the cases.

## Resources

* [Boggle on Wikipedia](http://en.wikipedia.org/wiki/Boggle)
* [Play Boggle online](http://www.wordplays.com/boggle)

