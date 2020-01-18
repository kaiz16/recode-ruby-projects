require "titleize"

puts "Instructions: Debug the files in /lib to pass RSpec"

describe "titleize" do
  it "capitalizes a word" do
    expect(titleize("jaws")).to eq("Jaws")
  end

  it "capitalizes every word (aka title case)" do
    expect(titleize("michael buble")).to eq("Michael Buble")
  end

  it "doesn't capitalize 'little words' in a title" do
    expect(titleize("romeo and juliet")).to eq("Romeo and Juliet")
  end

  it "does capitalize 'little words' at the start of a title" do
    expect(titleize("the land of the rising sun")).to eq("The Land of the Rising Sun")
  end
end
