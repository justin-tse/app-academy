class HumanPlayer
    attr_reader :mark

    def initialize(mark)
        @mark = mark
    end

    def get_position
        puts "Please input the position, the format is row col like: 1 2"
        position = gets.chomp()
        count_space = 0
        count_char = 0
        position = position.split(" ")
        raise puts "Only and need one space!!!" if position.length != 2
        raise puts "You need input integer!!!" if !(("0".."10000").to_a.include?(position[0]) && ("0".."10000").to_a.include?(position[1]))
        [position[0].to_i, position[1].to_i]
    end

    # Optimized the code
    def get_position
        puts "Player #{mark.to_s}, enter two numbers representing a position in the format 'row col'"
        pos = gets.chomp.split(' ').map(&:to_i)
        raise "sorry, that was invalid :(" if pos.length != 2
        pos
    end
end