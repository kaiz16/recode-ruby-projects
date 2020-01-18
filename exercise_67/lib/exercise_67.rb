def average(num1, num2)
    total = num1 + num2
    return total % 2 != 0 ? total / 2.0 : total / 2
end

def average_array(array)
    total = array.sum 
    if total % array.size != 0 
        return total / array.size.to_f
    end
    return total / array.size
end

def repeat(string, times)
    return string * times
end

def yell(word)
    return word.upcase + "!"
end

def alternating_case(string)
    str = string.split(" ")
    for i in 0..str.length - 1
       i % 2 == 0 ? str[i].upcase! : str[i].downcase!
    end
    return str.join(" ")
end

def hipsterfy(string)
    string.reverse.sub(/[aeiou]/i,"").reverse
end

def vowel_counts(string)
    result = {}
    vowels = string.downcase.scan(/[aeiou]/i)
    vowels.each do |v|
        result[v] = vowels.count(v)
    end
    return result
end

def caesar_cipher(string, num)
    small_letters = ("a".."z").to_a
    capital_letters = ("A".."Z").to_a
    caesar_cipher = ""
    string.each_char do |char|
        if capital_letters.include?(char)
            current_index = capital_letters.index(char)
            new_index = (current_index + num) % capital_letters.length
            caesar_cipher += capital_letters[new_index]
        elsif small_letters.include?(char)
            current_index = small_letters.index(char)
            new_index = (current_index + num) % small_letters.length
            caesar_cipher += small_letters[new_index]
        else
            caesar_cipher += char
        end
    end
    return caesar_cipher
end