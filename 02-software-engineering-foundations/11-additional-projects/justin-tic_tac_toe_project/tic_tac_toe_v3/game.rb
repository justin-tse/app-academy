require_relative "board"
require_relative "human_player"

class Game
    def initialize(n, *marks) 
        @board = Board.new(n)
        @players = []
        marks.each do |mark| 
            @players << HumanPlayer.new(mark)
        end
        @current_player = @players.first
    end

    def switch_turn
        @current_player = @players.rotate!.first
    end

    def play
            while @board.empty_positions?
                @board.print                
                position = @current_player.get_position
                @board.place_mark(position, @current_player.mark)
                if @board.win?(@current_player.mark)
                    @board.print
                    return puts "victory: #{@current_player.mark}"
                else
                    self.switch_turn
                end
            end
            puts "draw"
    end
end

Game.new(4, 'A', 'B', 'C').play