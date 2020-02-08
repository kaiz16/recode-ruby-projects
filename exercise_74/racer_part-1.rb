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
    attr_accessor :players
    attr_reader :length
    def initialize(players, length = 30)
        @players = Hash[players.collect { |player| [player, 0]} ]
        @length = length
    end
  
    def finished?
      return true if players.values.any?{|x| x == length - 1}
      return false
    end
  
    def advance_player!(player)
        move = Die.new.roll + players[player]
        move = length - 1 if move > (length - 1)
        players[player] = move
    end
  
    def winner
        self.players.any? do |player, position| 
            # Return the winner
            return player if position == length - 1
        end
    end

    def print_gameboard
        self.players.each do |player, position|
          track = Array.new(length, "  |")
          track[position] = "#{player}|"
          puts track.join("")
        end
    end
  
  end
  
  def reset_screen
    clear_screen
    move_to_home
  end
  
  def clear_screen
    print "\e[2J"
  end
  
  def move_to_home
    print "\e[H"
  end
  
  players = [:a, :b]
  game = RubyRacer.new(players)

  reset_screen
  puts game.print_gameboard
  until game.finished? 
  
    players.each do |player|
  
      game.advance_player!(player)
  
      reset_screen
      puts game.print_gameboard
  
      sleep(0.2)
    end 
  end

  puts "Player '#{game.winner}' wins!"