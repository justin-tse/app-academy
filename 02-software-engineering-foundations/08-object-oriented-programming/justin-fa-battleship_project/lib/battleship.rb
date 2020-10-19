require_relative "board"
require_relative "player"

class Battleship
attr_reader :board, :player

  def initialize(n)
    @player = Player.new
    @board = Board.new(n)
    @remaining_misses =  @board.size / 2
  # .round() .ceil() .floor()
  end

  def start_game
    @board.place_random_ships
    puts "The total number of hidden ships is: #{@board.num_ships}"
    @board.print
  end

  def lose?
    if @remaining_misses <= 0
      puts "you lose"
      true
    else
      false
    end
  end
 
  def win?
    if @board.num_ships == 0
      puts "you win"
      true
    else
      false
    end
  end

  # Optimize the code: itself is a boole
  def game_over?
    self.win? || self.lose?
  end

  def turn
    position = @player.get_move
    @remaining_misses -= 1 if !@board.attack(position)
    @board.print
    puts "remaing misses: #{@remaining_misses}"      
  end
end