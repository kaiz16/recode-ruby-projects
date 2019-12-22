# You will write a method, caesar_cipher that takes a String
# The method will shift the characters by an Integer factor and then output the modified String
# For example, caesar_cipher("a", 5) -> "f"
# (a is the first alphabet (1). Add 5, so the value is now 6. f is the 6th alphabet.)
# Remember that lowercase and uppercase characters have different values

def caesar_cipher(string, shift_factor)
# Write your code here
    caesar_cipher = []
    string.each_byte do |c|
        caesar_cipher = caesar_cipher.push(c) 
    end
    caesar_cipher.map! do |x|
        x = x + shift_factor
        x = x.chr
    end
    return caesar_cipher.join("")
end

print caesar_cipher("What a string!", 5) #== "Bmfy f xywnsl!"
puts

#p caesar_cipher("abc", 5)