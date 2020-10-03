require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(other_code)
    puts other_code.num_exact_matches(@secret_code)
    puts other_code.num_near_matches(@secret_code)
  end

  def ask_user_for_guess
    p "Enter a code"
    user_guess = Code.from_string(gets.chomp)
   print_matches(user_guess)
    p  @secret_code
    user_guess == @secret_code
  end
end
