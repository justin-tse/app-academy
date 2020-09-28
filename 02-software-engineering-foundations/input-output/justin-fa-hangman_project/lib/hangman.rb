class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word
    @randowm_word = DICTIONARY.sample
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
    @guess_word
  end

  def try_guess(char)
    @remaining_incorrect_guesses -= 1 if !@secret_word.include?(char)
    if already_attempted?(char)
      print 'that has already been attempted'
      return false
    else
      @attempted_chars << char
      fill_indices(char, get_matching_indices(char))
      return true
    end
  end

  def ask_user_for_guess
    print "Enter a char: "
    try_guess(gets.chomp)
  end

  def win?
    if @guess_word == @secret_word.split("")
      print "WIN"
      true
    else
      false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      print "LOSE"
      true
    else
      false
    end
  end

  def game_over?
    print @secret_word
    return win? || lose?
    # if win? || lose? == false
    #   true
    # else
    #   false
    # end    
  end
  
end
