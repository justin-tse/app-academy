class Board
  attr_reader :size

  def initialize(n)
    @grid = Array.new(n) { Array.new(n, :N) }
    @size = n * n
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, val)
    row, col = position
    @grid[row][col] = val
  end

  def num_ships 
    @grid.flatten.count { |ele| ele == :S } 
  end

  def num_ships 
    count = 0

    @grid.each do |sub_arr|
      sub_arr.each { |ele|  count += 1 if ele == :S } 
    end

    count
  end

  def attack(position)
    if self.[](position) == :S
      self.[]=(position, :H)
      puts 'you sunk my battleship!'
      true
    else
      self.[]=(position, :X)
      false
    end
  end

  def place_random_ships
    total_ships = @size * 0.25

    while self.num_ships < total_ships
      rand_row = rand(0...@grid.length)
      rand_column = rand(0...@grid.length)
      position = rand_row, rand_column
      self.[]=(position, :S)
    end

  end

  def hidden_ships_grid
    hidden_ships_grid =  Array.new(@grid.length) { Array.new(@grid.length) }
    @grid.each_with_index do |sub_arr, i|
      sub_arr.each_with_index do |ele, j|
        ele = :N if ele == :S 
        hidden_ships_grid[i][j] = ele
      end
    end

    hidden_ships_grid
  end

  def self.print_grid(grid)
    grid.each { |row| puts row.join(" ") }
  end

  def cheat
    Board.print_grid(@grid)
  end

  def print
    Board.print_grid(self.hidden_ships_grid)
  end
end
