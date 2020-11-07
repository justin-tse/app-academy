class HumanPlayer
    attr_reader :mark

    def initialize(mark)
        @mark = mark
    end

    def get_position(legal_positions)
        position = []
        until legal_positions.include?(position)
            puts "Player #{@mark} please input the legal position!"
            position = gets.chomp()
            position = position.split(" ")
            position = [position[0].to_i, position[1].to_i]
        end
        position
    end
end