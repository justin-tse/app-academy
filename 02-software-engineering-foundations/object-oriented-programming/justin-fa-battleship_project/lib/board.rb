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
    num = @grid.length
    @grid.each_with_index do |row, i|
      row.sample(num / 4).map! { |index| row[i] = :S if i == index}
    end
    @grid
  end
  
end
