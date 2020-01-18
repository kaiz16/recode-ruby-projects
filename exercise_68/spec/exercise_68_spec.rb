require "exercise_68"

describe "Exercise 68:" do
  describe "partition" do
    it "should accept an array and a number as args" do
      expect { partition([11, 5, 13, 2, 3], 7) }.to_not raise_error
    end

    it "should return a 2D array of length 2 where the first subarray contains elements less than the number arg and the second subarray contains elements greater than or equal to the number arg" do
      expect(partition([11, 5, 13, 2, 3], 7)).to eq([[5, 2, 3], [11, 13]])
      expect(partition([1, 2, 4, 3, 5, 7], 5)).to eq([[1, 2, 4, 3], [5, 7]])
      expect(partition([1, 2, 4, 3], 0)).to eq([[], [1, 2, 4, 3]])
    end

    it "should not use the built-in Array#partition" do
      arr = [11, 5, 13, 2, 3]
      expect(arr).to_not receive(:partition)
      partition(arr, 7)
    end
  end

  describe "merge" do
    it "should accept two hashes as args" do
      hash_1 = {"a"=>10, "b"=>20}
      hash_2 = {"c"=>30, "d"=>40, "e"=>50}
      expect { merge(hash_1, hash_2) }.to_not raise_error
    end

    it "should return a new hash representing containing key-value from both hashes" do
      hash_1 = {"a"=>10, "b"=>20}
      hash_2 = {"c"=>30, "d"=>40, "e"=>50}
      expect(merge(hash_1, hash_2)).to eq({"a"=>10, "b"=>20, "c"=>30, "d"=>40, "e"=>50})
    end

    it "should take the value from the second hash if the two hashes have duplicate keys" do
      hash_1 = {"a"=>10, "b"=>20}
      hash_2 = {"c"=>30, "b"=>7}
      expect(merge(hash_1, hash_2)).to eq({"a"=>10, "b"=>7, "c"=>30})
    end

    it "should not mutate the two input hashes" do
      hash_1 = {"a"=>10, "b"=>20}
      hash_2 = {"c"=>30, "d"=>40, "e"=>50}
      merge(hash_1, hash_2)

      expect(hash_1).to eq({"a"=>10, "b"=>20})
      expect(hash_2).to eq({"c"=>30, "d"=>40, "e"=>50})
    end
  end

  describe "censor" do
    it "should accept a sentence and an array of curse words as args" do
      expect { censor("Gosh darn it", ["gosh", "darn", "shoot"]) }.to_not raise_error
    end

    it "should return the sentence where every curse word has it's vowels replaced with '*'" do
      expect(censor("Gosh darn it", ["gosh", "darn", "shoot"])).to eq("G*sh d*rn it")
      expect(censor("SHUT THE FRONT DOOR", ["door"])).to eq("SHUT THE FRONT D**R")
    end
  end

  describe "power_of_two?" do
    it "should accept a number as an arg" do
      expect { power_of_two?(16) }.to_not raise_error
    end

    context "when the number is a power of two" do
      it "should return true" do
        expect(power_of_two?(16)).to eq(true)
        expect(power_of_two?(32)).to eq(true)
        expect(power_of_two?(64)).to eq(true)
        expect(power_of_two?(1)).to eq(true)
      end
    end

    context "when the number is not a power of two" do
      it "should return false" do
        expect(power_of_two?(6)).to eq(false)
        expect(power_of_two?(7)).to eq(false)
        expect(power_of_two?(28)).to eq(false)
        expect(power_of_two?(100)).to eq(false)
      end
    end
  end

  describe "palindrome?" do
    it "should accept a string as an arg" do
      expect { palindrome?("tot") }.to_not raise_error
    end

    context "when the string is the same forwards and backwards" do
      it "should return true" do
        expect(palindrome?("tot")).to eq(true)
        expect(palindrome?("racecar")).to eq(true)
        expect(palindrome?("madam")).to eq(true)
        expect(palindrome?("aa")).to eq(true)
        expect(palindrome?("a")).to eq(true)
      end
    end

    context "when the string is not the same forwards and backwards" do
      it "should return false" do
        expect(palindrome?("cat")).to eq(false)
        expect(palindrome?("greek")).to eq(false)
        expect(palindrome?("xabcx")).to eq(false)
      end
    end

    it "should not use String#reverse" do
      expect_any_instance_of(String).to_not receive(:reverse)
      palindrome?("tot")
    end
  end

  describe "substrings" do
    it "should accept a string as an arg" do
      expect { substrings("jump") }.to_not raise_error
    end

    it "should return an array containing all substrings of the given string" do
      expect(substrings("jump")).to match_array ["j", "ju", "jum", "jump", "u", "um", "ump", "m", "mp", "p"]
      expect(substrings("abc")).to match_array ["a", "ab", "abc", "b", "bc", "c"]
      expect(substrings("x")).to match_array ["x"]
    end
  end

  describe "palindrome_substrings" do
    it "should accept a string as an arg" do
      expect { palindrome_substrings("abracadabra") }.to_not raise_error
    end

    it "should return an array containing all substrings that are palindromes and longer than 1 character" do
      expect(palindrome_substrings("abracadabra")).to match_array ["aca", "ada"]
      expect(palindrome_substrings("madam")).to match_array ["madam", "ada"]
      expect(palindrome_substrings("taco")).to match_array []
    end

    it "should call your previous 'palindrome?' method" do
      expect(self).to receive(:palindrome?).at_least(:once)
      palindrome_substrings("madam")
    end

    it "should call your previous 'substrings' method" do
      allow(self).to receive(:substrings).and_return(["a", "ab", "b"])
      expect(self).to receive(:substrings).at_least(:once)
      palindrome_substrings("ab")
    end
  end
end
