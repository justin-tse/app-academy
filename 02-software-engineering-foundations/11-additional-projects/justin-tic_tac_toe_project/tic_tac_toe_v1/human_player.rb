class HumanPlayer
    attr_reader :player_mark

    def initialize(player_mark)
        @player_mark = player_mark
    end

    def get_position
        puts "Please input the position, the format is row col like: 1 2"
        position = gets.chomp()
        count_space = 0
        count_char = 0
        position = position.split(" ")
        puts position
        p position[0]
        return puts "Only and need one space!!!" if position.length != 2
        return puts "You need input integer!!!" if !(position[0].is_a?(Integer) && position[1].is_a?(Integer))
        [position[0], position[1]]
        p position
    end
end