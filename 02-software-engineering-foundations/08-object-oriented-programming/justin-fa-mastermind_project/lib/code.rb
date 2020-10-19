class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }
  
  attr_reader :pegs

  def self.valid_pegs?(array)
    array.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase)}
  end

  # def self.random(length)
  #   random_array = []
  #   length.times do
  #     random_array << POSSIBLE_PEGS.keys.sample
  #   end
  #     Code.new(random_array)
  # end

  def self.random(length)
    pegs = Array.new(length) { Code::POSSIBLE_PEGS.keys.sample }
    Code.new(pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)

      # @pegs = array
      # array.map! { |char| char.upcase }
      # why this line is not right??  @pegs.map! { |char| char.upcase }
    else
      raise "pegs are invalid"
    end
  end

  def [](index)
    @pegs[index]
  end
  
  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    (0...guess.length).count { |i| guess[i] == @pegs[i] }
  end

  def num_near_matches(guess)
    num_near = 0
    (0...guess.length).each do |i|
      num_near += 1 if guess[i] != self[i] && @pegs.include?(guess[i])
    end

    num_near
  end

  def ==(other_code)
    other_code.length == self.length && num_exact_matches(other_code) == self.length
  end
end