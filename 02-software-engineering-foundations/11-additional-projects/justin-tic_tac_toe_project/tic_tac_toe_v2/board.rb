class Board
    attr_reader :grid

    def initialize
        @grid = Array.new(3) { Array.new(3, "_")}
    end

    def valid?(position)
        position[0] >= 0 && position[0] <= 2 && position[1] >= 0 && position[1] <= 2
    end

    def empty?(position)
        @grid[position[0]][position[1]] == '_'
    end

    def place_mark(position, mark)
        if valid?(position) && empty?(position)
            @grid[position[0]][position[1]] = mark
        else
            raise "the position have problem"
        end
    end

    def print
        @grid.each { |row| p row }
    end

    def win_row?(mark)
        @grid.any? do |row|
            row.all? { |el| el == mark }
        end
    end

    def win_col?(mark)
        @grid.transpose.any? do |row|
            row.all? { |el| el == mark }
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