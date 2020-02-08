class BoggleBoard
  attr_accessor :game_board
  attr_reader :dice
  def initialize
    @game_board = Array.new()
    4.times do 
        @game_board << Array.new(4, "_")
    end
    @dice = [["AAEEGN","ELRTTY","AOOTTW","ABBJOO"],
             ["EHRTVW","CIMOTU","DISTTY","EIOSST"],
             ["DELRVY","ACHOPS","HIMNQU","EEINSU"],
             ["EEGHNW","AFFKPS","HLNNRZ","DEILRX"]]
#@game_board = [["O", "O", "O", "O"], ["O", "T", "T", "O"], ["O","O","O","O"], ["O","O","L","O"]]
#@game_board = [["E", "L", "O", "B"], ["V", "T", "T", "I"], ["V","O","N","I"], ["H","F","L","D"]]
#@game_board = [["E", "T", "A", "B"], ["R", "I", "D", "S"], ["E","A","N","E"], ["E","F","Z","R"]]
  end

  def shake!
    game_board.each_with_index do |row, rowIndex|
        row.length.times do |col|
            random_word = dice[rowIndex][col][rand(0..5)]
            random_word = "Qu" if random_word == "Q"
            row[col] = random_word
        end
    end
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
        output = %q{}
        @game_board.each do |row|
            output += "\t"
            row.each_with_index do |cell, index|
                formatter = cell + " | "
                formatter = cell + "| " if cell == "Qu"
                formatter = cell if index == row.length - 1
                output += formatter
            end
            output += "\n"
        end
        return output
  end

  def include?(word)
    word = word.split("")
    word.each_with_index do |letter, i|
        if letter == "Q" && word[i + 1] == "U"
            word[i] = "Qu"
            word.delete_at(i + 1)
        end
    end
    game_board.each_with_index do |row, row_index|
        row.each_with_index do |col, col_index|
            if col == word.first && deep_search(row_index, col_index, word, [])
                return true 
            end
        end
    end
    return false
  end

  def deep_search(row, col, word, chain = [], board_word = "", i = 0)
    if board_word == word.join("")
        p chain
        return true
    end

    chain.delete_at(-1) if chain.length > board_word.length # remove the extra paths
    # for ex: if we are looking for "TOOL" in a board that has many O's 
    # the method will check in multiple paths and add to the chain array if a character is found 
    # but when something becomes false, like an "L", a recursion will fallback until it reaches true state or out of range 
    # in that case, the word paths that were added to the chain array become useless so remove them.

    if row < 0 || row >= game_board.length || col < 0 || col >= game_board.length
        return false # Return false if out of bound
    end


    return false if chain.include?([row, col]) # Do not go through the same path twice

    if game_board[row][col] == word[i]
        board_word += game_board[row][col]
        chain << [row, col]
    else 
        return false # False if we don't find the character
    end
    deep_search(row, col - 1, word, chain, board_word, i + 1) || # Horizontally
    deep_search(row, col + 1, word, chain, board_word, i + 1) || # Horizontally
    deep_search(row - 1, col, word, chain, board_word, i + 1) || # Vertically
    deep_search(row + 1, col, word, chain, board_word, i + 1) || # Vertically
    deep_search(row + 1, col + 1, word, chain, board_word, i + 1) || # Diagonally
    deep_search(row + 1, col - 1, word, chain, board_word, i + 1) || # Diagonally
    deep_search(row - 1, col + 1, word, chain, board_word, i + 1) || # Diagonally
    deep_search(row - 1, col - 1, word, chain, board_word, i + 1) # Diagonally
  end
end

# DRIVER CODE BELOW: PLEASE WRITE IT #

board = BoggleBoard.new
puts board.to_s
puts """
        Boggle Board
        Shaking the board
    """
board.shake!
loop do
    puts board.to_s
    print "Search the words (CTRL + C to exit) : "
    userword = gets.chomp.upcase
    p board.include?(userword)
end