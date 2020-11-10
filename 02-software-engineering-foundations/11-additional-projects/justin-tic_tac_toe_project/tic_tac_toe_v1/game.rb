require_relative "board"
require_relative "human_player"

class Game
    def initialize(player_1_mark, player_2_mark) 
        @board = Board.new
        @player_1 = HumanPlayer.new(player_1_mark) 
        @player_2 = HumanPlayer.new(player_2_mark)  
        @current_player = @player_1
    end

    def switch_turn
        if @current_player == @player_1
            @current_player = @player_2
        else
            @current_player = @player_1
        end
    end

    def play
        while @board.empty_positions?
            @board.print                
            pos = @current_player.get_position
            @board.place_mark(pos, @current_player.mark)
            if @board.win?(@current_player.mark)
                @board.print
                puts "Game Over"
                return puts "victory: #{@current_player.mark}"
            else
                self.switch_turn
            end
        end
        
        puts "Game Over"
        puts "draw"
    end
end
