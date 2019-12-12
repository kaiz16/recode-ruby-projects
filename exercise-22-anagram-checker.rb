# Exercise 22 - Anagram Checker
print "First word? "
first_word = gets.chomp
print "Second word? "
second_word = gets.chomp

def anagram_checker(first_word, second_word)
    if first_word.downcase.split("").sort() == second_word.downcase.split("").sort() # lowercase, split and sort and compare
         return "#{first_word} and #{second_word} are anagrams!"
    end
    return "#{first_word} and #{second_word} are NOT anagrams!"
end

p anagram_checker(first_word, second_word)