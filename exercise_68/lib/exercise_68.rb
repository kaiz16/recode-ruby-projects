def partition(array, int)
    return [array.select{|x| x < int}, array.select{|x| x >= int}]
end

def merge(hash1, hash2)
    merged = Hash[hash1]
    hash2.each do |k, v|
        merged[k] = v
    end
    return merged
end

def censor(string, censor)
     censor.each do |w|
        match_word = string.match(/#{w}/i).to_s
        string.gsub!(/#{match_word}/, match_word.gsub(/[aeiou]/i, "*"))
     end
     return string
end

def power_of_two?(x)
    # Any power of two in binary is 1 and the rest is 0.
    return true if x.to_s(2).count("1") == 1
    return false
end

def palindrome?(string)
    return true if string.length <= 1
    if string[0] == string[-1]
        return palindrome?(string[1..-2])
    end
    return false
end

def substrings(string, counter = 0)
    return if string.length < 1
    if counter > string.length - 1
        string = string.slice(1..-1)
        counter = 0
    end
    return [string.slice(0..counter), substrings(string, counter + 1)].flatten.compact.reject{|v| v.empty?}  
end

def palindrome_substrings(string)
    substrings = substrings(string)
    result = []
    substrings.select{|i| i.length > 1}.each do |w|
        result << w if palindrome?(w)
    end
    return result
end