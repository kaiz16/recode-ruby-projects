class Board
    attr_accessor :game_board
    def initialize
        @game_board = ["","","",
                       "","","",
                       "","",""]
    end
    
    def won?
        players.each do |player|
            triples.each do |triple|
                return self.winner = player.symbol if triple.all? {|index| game_board[index] == player.symbol}
            end
        end
        return false
    end

    def draw?
        return true if !game_board.include?("") && !won?()
        return false
    end

    def available_postions
       return game_board.map.with_index{|position, index| index if position.empty?}.compact
    end

    def mark_place(pos, mark)
        self.game_board[pos] = mark
    end

    def print_board
        out = "\n\t"
        separator = "-----------------"
        game_board.each_with_index do |c, i|
            tmp = "     |"
            tmp = "  #{c}  |" if !c.empty?
            tmp = "  #{c}\n\t" if (i + 1) % 3 == 0 && i != 0
            out += tmp
            out += separator + "\n\t" if i != 8 && (i + 1) % 3 == 0
        end
        return out
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
    #More methods needed... What are they?
end

class Game < Board
    attr_accessor :players, :winner
    attr_reader :triples
    def initialize(player1, player2)
        super()
        @winner = false
        @players = []
        @triples = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
        players << player1 << player2
    end

    def play
        players.each do |player|
            if player.class.name == "HumanPlayer"
              self.mark_place(human_move(player), player.symbol)
            else
              self.mark_place(computer_move(player), player.symbol)
            end
            self.reset_screen
            puts self.print_board
            sleep(0.5)
            return if self.won? || self.draw? # breaks out of loop if there's a win or draw
        end
    end

    def human_move(player)
        print "Player #{player.symbol} turn. Enter preferred position (1-9) : "
        preferred_position = gets.chomp.to_i - 1
            if self.available_postions.include?(preferred_position)
                return preferred_position
            end
        puts "Enter in empty position"
        human_move(player)
    end

    def computer_move(player)
        triples.each_with_index do |triple, index|
            temp_board = triple.map {|index| game_board[index]}
            if temp_board.count(player.symbol) == 2 && !temp_board.include?(opposite_player_of(player.symbol))
                return triples[index][temp_board.index("")]
             end
        end
        available_postions[rand(0..available_postions.length - 1)]
    end

    def opposite_player_of(player)
        player == "X" ? "O" : "X"
    end
end
# More classes needed... What are they?
class HumanPlayer < Game
    attr_reader :symbol
    def initialize(symbol)
        @symbol = symbol
    end
end

class ComputerPlayer < Game
    attr_reader :symbol
    def initialize(symbol)
       @symbol = symbol
    end
end

#game = Game.new(ComputerPlayer.new("X"), ComputerPlayer.new("O")) # COM vs COM
#game = Game.new(HumanPlayer.new("X"), HumanPlayer.new("O")) # Human vs Human
game = Game.new(HumanPlayer.new("X"), ComputerPlayer.new("O")) # Human vs COM
puts game.print_board
until game.won? || game.draw?
    game.play
end
puts game.won? ? "Player #{game.winner} wins" : "Game's drawn" 