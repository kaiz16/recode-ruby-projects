# You will write a method more_than_once that takes in a String
# The method will return an array containing the characters that appeared more than twice in the string.

def more_than_once(string)
    string = string.split("")
    result = []
    string.each do |x|
        if string.count(x) > 2
            result = result.push(x) if !result.include?(x)
        end
    end
    return result
end

print more_than_once('mississippi') == ["i", "s"]
puts

print more_than_once('bootcamp') == []
puts