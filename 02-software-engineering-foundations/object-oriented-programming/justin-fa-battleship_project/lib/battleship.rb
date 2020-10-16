require_relative "board"
require_relative "player"

class Battleship
attr_reader :board, :player

  def initialize(n)
    @player = Player.new
    @board = Board.new(n)
    @remaining_misses =  @board.size * 0.5
  end

  def start_game
    @board.place_random_ships
    print @board.num_ships
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      print "you lose"
      true
    else
      false
    end
  end
 
  def win?
    if @board.num_ships == 0
      print "you win"
      true
    else
      false
    end
  end

  def game_over?
    if self.win? || self.lose?
      true
    else
      false
    end
  end

  def turn
    position = @player.get_move
    @board.print
    @remaining_misses -= 1 if !@board.attack(position)
    print @remaining_misses
  end
end
