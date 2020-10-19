class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  
  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end
  
  def get_matching_indices(char)
    array = []
    @secret_word.each_char.with_index { |c, i| array << i if char == c }
    array
  end

  def fill_indices(char, array)
    array.each { |index| @guess_word[index] = char }
  end

  def try_guess(char)
    if self.already_attempted?(char)
      print 'that has already been attempted'
      return false
    end

    @attempted_chars << char

    matching = self.get_matching_indices(char)
    if matching.empty?
      @remaining_incorrect_guesses -= 1
    else
      self.fill_indices(char, matching)
    end

    true
  end

  def ask_user_for_guess
    print "Enter a char: "
    self.try_guess(gets.chomp)
  end

  def win?
    if @guess_word == @secret_word.split("")
      p "WIN"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      p "LOSE"
      true
    else
      false
    end
  end

  def game_over?
    if win? || lose?
      p "The word is: #{@secret_word}"
      true
    else
      false
    end
  end
end