# You will write a method reverse(word) that takes in a String
# The method returns the word with its letters in reverse order
# You may not use the String#reverse or String#reverse! method

def reverse(word)
    word = word.split("")
    reversed = []
    for i in 1..word.length
        reversed = reversed.push(word[i * -1])
    end
    return reversed.join("")
end

puts reverse("cat") == "tac"
puts

puts reverse("programming") == "gnimmargorp"
puts

puts reverse("bootcamp") == "pmactoob"
puts