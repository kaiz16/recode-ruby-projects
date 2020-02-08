class Die
    attr_reader :sides
    def initialize(sides = 6)
        @sides = sides
    end

    def roll
        return rand(1..sides)
    end
    
  end
  
class RubyRacer
    attr_reader :players, :length
    attr_accessor :positions
    def initialize(players, length = 30)
        @players = players
        @positions = Array.new(players.length, 0)
        @length = length
    end
  
    # Returns true if a player has reached the finish line and false otherwise.
    def finished?
        return true if positions.any? {|x| x == length - 1}
        return false
    end
  
    # Returns the winner if there is one, nil otherwise
    def winner
       return nil  if !finished?
       return players[positions.index(positions.sort.last)]
    end

    # Rolls the die and advances each player accordingly
    def advance_player!(player)
        new_position = Die.new.roll + positions[players.index(player)]
        new_position = length - 1 if new_position > length - 1
        positions[players.index(player)] = new_position
    end
  
    # Prints the current game board
    # The board should have the same dimensions each time
    def print_gameboard
        players.each_with_index do |player, index|
            track = Array.new(length, "  |")
                track[positions[index]] = player[0..1] + "|"
            puts track.join("")
        end
        self.print_scoreboard
    end
  
    # For Part 2:
    # Prints the ranking board (Scoreboard)
    def print_scoreboard
        # Sort the players in decending order of their position
        leaderboard = players.sort_by{|x| positions[players.index(x)]}.reverse
        leaderboard.each_with_index do |player, pos|
            puts "#{pos + 1} : #{player} (#{player[0..1]})"
        end 
        return leaderboard
    end
  
  end
  
   #### HELPER CODE - DO NOT EDIT THIS SECTION ####
   
  # The following methods will help us
  # to update the screen when printing the board.
  # We don't need to test these methods.
  def reset_screen
    clear_screen
    move_to_home
  end
  
  # Clears the content on the terminal.
  def clear_screen
    print "\e[2J"
  end
  
  # Moves the insert point in the terminal to the upper left.
  def move_to_home
    print "\e[H"
  end
  
   #### END HELPER CODE ####
  
   #### DRIVER CODE - DO NOT EDIT BELOW FOR PART 1 ####
  puts "How many players ?"
  players = []
  num_of_players = gets.chomp.to_i
  num_of_players.times do |num|
    puts "Enter player's #{num + 1} name"
    players << gets.chomp
  end
  game = RubyRacer.new(players)

  # Clear the screen and print the board with players in their starting positions.
  # Then pause, so users can see the starting board. The fun can begin!
  reset_screen
  game.print_gameboard
  sleep(1)
  
  # Run the race.
  until game.finished?
    # Do this each round until the race is finished.
    players.each do |player|
      # Move a player forward.
      game.advance_player!(player)
  
      # Now that the player has moved,
      # reprint the board with the new player positions
      # and pause so users can see the updated board.
      reset_screen
      game.print_gameboard
      break if game.finished?
      # We need to sleep a little, otherwise the game will blow right past us.
      # See http://www.ruby-doc.org/core-2.6.3/Kernel.html#method-i-sleep
      sleep(0.2)
    end 
  end
  
  # Once the race is finished, report the winner.
  puts "Player '#{game.winner}' wins!"
  
   #### END OF DRIVER CODE ####