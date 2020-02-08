# Includes part 1 and part 2
# Just remove the @dice for part 1 
class BoggleBoard
  attr_accessor :game_board
  attr_reader :dice
  def initialize
    @game_board = Array.new
      4.times do 
        @game_board << Array.new(4, "_")
      end
   @dice = [["AAEEGN","ELRTTY","AOOTTW","ABBJOO"],
            ["EHRTVW","CIMOTU","DISTTY","EIOSST"],
            ["DELRVY","ACHOPS","HIMNQU","EEINSU"],
            ["EEGHNW","AFFKPS","HLNNRZ","DEILRX"]]
  end

  def shake!
    game_board.each_with_index do |row, row_index|
      row.length.times do |col|
        row[col] = dice[row_index][col][rand(0..5)]
      end
    end
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    res = ""
    game_board.each do |c|
        res += c.join() + "\n"
    end
    return res
  end
end

# DRIVER CODE BELOW: PLEASE WRITE IT #
board = BoggleBoard.new
print board.game_board
board.shake!
puts board.to_s