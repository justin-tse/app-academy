class HumanPlayer
    attr_reader :mark

    def initialize(mark)
        @mark = mark
    end

    def get_position(legal_positions)
        pos = []
        until legal_positions.include?(pos)
            puts "Player #{@mark} please input the legal position!"
            pos = gets.chomp().split(' ').map(&:to_i)
            puts "#{pos} is not a legal position" if !legal_positions.include?(pos)
            raise 'sorry, that was invalid :(' if pos.length != 2
        end
        pos
    end
end