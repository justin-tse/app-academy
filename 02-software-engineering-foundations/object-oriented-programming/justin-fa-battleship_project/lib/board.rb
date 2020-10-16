class Board
  attr_reader :size

  # Optimized the position class method had better in the begining
  def self.print_grid(grid)
    grid.each { |row| puts row.join(" ") }
  end

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  # Optimized the code into a shorter
  def num_ships 
    @grid.flatten.count(:S)
  end

  # Optimized the code into a shorter name
  def attack(pos)
    if self[pos] == :S
      self[pos] = :H
      puts 'you sunk my battleship!'
      true
    else
      self[pos] = :X
      false
    end
  end

  def place_random_ships
    total_ships = @size * 0.25
    
    while self.num_ships < total_ships
      row = rand(0...@grid.length)
      col = rand(0...@grid.length)
      pos = [row, col]
      self[pos] = :S
    end
    
  end

  # Optimized the code: when need to create a new array, please consider to use map
  def hidden_ships_grid   
    @grid.map do |row|
      row.map do |ele|
        if ele == :S 
          :N 
        else
          ele
        end
      end
    end
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(self.hidden_ships_grid)
  end
end