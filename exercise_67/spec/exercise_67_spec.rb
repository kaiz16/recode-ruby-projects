require "exercise_67"

describe "Exercise 67:" do
  describe "average" do
    it "should accept two numbers as arguments" do
      expect { average(4, 8) }.to_not raise_error
    end

    it "should return the average of the two numbers" do
      expect(average(4, 8)).to eq(6)
      expect(average(5, 10)).to eq(7.5)
    end
  end

  describe "average_array" do
    it "should accept an array of numbers as an arg" do
      expect { average_array([2, 4, 6]) }.to_not raise_error
    end

    it "should return the average of the numbers of the array" do
      expect(average_array([2, 4, 6])).to eq(4)
      expect(average_array([3, -4, 21, 8])).to eq(7)
      expect(average_array([5, 10])).to eq(7.5)
    end
  end

  describe "repeat" do
    it "should accept a string and a number as args" do
      expect { repeat("happy", 2) }.to_not raise_error
    end

    it "should return a new string where the original is repeated that number of times" do
      expect(repeat("happy", 2)).to eq("happyhappy")
      expect(repeat("Work", 5)).to eq("WorkWorkWorkWorkWork")
      expect(repeat("whoa", 0)).to eq("")
    end
  end

  describe "yell" do
    it "should accept a string as an arg" do
      expect { yell("hello") }.to_not raise_error
    end

    it "should return a yelled version of the string" do
      expect(yell("hello")).to eq("HELLO!")
      expect(yell("goodBYE")).to eq("GOODBYE!")
    end
  end

  describe "alternating_case" do
    it "should accept a sentence string as an arg" do
      expect { alternating_case("code never lies, comments sometimes do.") }.to_not raise_error
    end

    it "should return the sentence with words alternating between uppercase and lowercase" do
      expect(alternating_case("code never lies, comments sometimes do.")).to eq("CODE never LIES, comments SOMETIMES do.")
      expect(alternating_case("HEY PROGRAMMERS")).to eq("HEY programmers")
    end
  end

  describe "hipsterfy" do
    it "should accept a word as an arg" do
      expect { hipsterfy("tonic") }.to_not raise_error
    end

    it "should return the word with it's last vowel (a, e, i, o, u) removed" do
      expect(hipsterfy("tonic")).to eq("tonc")
      expect(hipsterfy("panther")).to eq("panthr")
      expect(hipsterfy("swimming")).to eq("swimmng")
    end

    it "should return the original word if it contains no vowels" do
      expect(hipsterfy("rhythm")).to eq("rhythm")
      expect(hipsterfy("my")).to eq("my")
    end
  end

  describe "vowel_counts" do
    it "should accept string as an arg" do
      expect { vowel_counts("code bootcamp") }.to_not raise_error
    end

    it "should return a hash where each key is a vowel of string and it's value is the number of times it appears" do
      expect(vowel_counts("code bootcamp")).to include({"o"=>3, "e"=>1, "a"=>1})
      expect(vowel_counts("williamsburg bridge")).to include({"i"=>3, "a"=>1, "u"=>1, "e"=>1})
      expect(vowel_counts("WILLIAMSBURG bridge")).to include({"i"=>3, "a"=>1, "u"=>1, "e"=>1})
    end
  end

  describe "caesar_cipher" do
    it "should accept a message and a number (n) as an arg" do
      expect { caesar_cipher("hello", 5) }.to_not raise_error
    end

    it "should return a new string where every letter of the message is shifted n positions in the alphabet" do
      expect(caesar_cipher("apple", 1)).to eq("bqqmf")
      expect(caesar_cipher("apple", 2)).to eq("crrng")
      expect(caesar_cipher("hello", 5)).to eq("mjqqt")
      expect(caesar_cipher("zebra", 4)).to eq("difve")
      expect(caesar_cipher("whoa", 26)).to eq("whoa")
      expect(caesar_cipher("whoa", 52)).to eq("whoa")
    end

    it "should not modify non-alphabetic characters" do
      expect(caesar_cipher("123 _-!?@%", 3)).to eq("123 _-!?@%")
      expect(caesar_cipher("hello world!", 1)).to eq("ifmmp xpsme!")
      expect(caesar_cipher("welcome to week 5, day 2", 2)).to eq("ygneqog vq yggm 5, fca 2")
    end
  end
end
