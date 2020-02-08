# Part 3
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
          random_letter = dice[row_index][col][rand(0..5)]
          random_letter = "Qu" if random_letter == "Q"
          row[col] = random_letter
        end
      end
    end
  
    # Defining to_s on an object controls how the object is
    # represented as a string, e.g., when you pass it to puts
    def to_s
      out = %q{

      }
      game_board.each do |row|
        out += "\t"
        row.length.times do |col|
            formatter = row[col] + " | "
            formatter = row[col] + "| " if row[col] == "Qu"
            formatter = row[col] if col == row.length - 1
            out += formatter
        end
        out += "\n"
    end
    return out
    end
end
  
  # DRIVER CODE BELOW: PLEASE WRITE IT #
  board = BoggleBoard.new
  puts board.to_s
    10.times do
        board.shake!
        puts board.to_s
        sleep(0.2)
    end