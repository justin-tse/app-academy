class Board
    def initialize
        @grid = Array.new(3) { Array.new(3, "_")}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end
    
    def valid?(position)
        position[0] >= 0 && position[0] <= @n - 1 && position[1] >= 0 && position[1] <= @n - 1
    end

    # Optimized the code
    def valid?(pos)
        row, col = pos
        pos.all? do |i|
            0 <= i && i < @grid.length
        end
    end
    
    def empty?(position)
        @grid[position[0]][position[1]] == '_'
    end
    
    # Optimized the code
    def empty?(pos)
        self[pos] == '_'
    end

    def place_mark(pos, mark)
        if valid?(pos) && empty?(pos)
            self[pos] = mark
        else
            raise "invalid mark"
        end
    end

    def print
        @grid.each { |row| p row.join(' ') }
    end

    def win_row?(mark)
        @grid.any? do |row|
            row.all? { |el| el == mark }
        end
    end

    def win_col?(mark)
        @grid.transpose.any? do |col|
            col.all? { |el| el == mark }
        end
    end

    def win_diagonal?(mark)
        diagonal = []
        anti_diagonal = []
        (0...@grid.length).each do |i|
            diagonal << @grid[i][i]
            anti_diagonal << @grid[i][-i - 1]            
        end
        diagonal.uniq == [mark] || anti_diagonal.uniq == [mark]
    end

    def win?(mark)
        win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
    end

    def empty_positions?
        @grid.any? do |row|
            row.any? { |el| el == "_" }
        end
    end
end