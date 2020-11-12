require "byebug"
require_relative "board"
require_relative "human_player"
require_relative "computer_player"

class Game
    def initialize(n, hash) 
        @board = Board.new(n)
        @players = hash.map do |mark, is_human| 
            is_human ? HumanPlayer.new(mark) : ComputerPlayer.new(mark)
        end
        @current_player = @players.first
    end

    def switch_turn
        @current_player = @players.rotate!.first
    end

    def play
        while @board.empty_positions?
            @board.print
            legal_positions = @board.legal_positions
            position = @current_player.get_position(legal_positions)
            @board.place_mark(position, @current_player.mark)
            if @board.win?(@current_player.mark)
                @board.print
                puts 'Game Over'
                return puts "victory: #{@current_player.mark}"
            else
                self.switch_turn
            end
        end
        puts 'Game Over'
        puts "draw"
    end
end

machine_civil_war = Game.new(4, h: false, u: false, e: false)
machine_civil_war.play
