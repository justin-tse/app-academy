require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(other_code)
    puts "exact matches: #{@secret_code.num_exact_matches(other_code)}"
    puts "near matches: #{@secret_code.num_near_matches(other_code)}"
  end

  def ask_user_for_guess
    p "Enter a code"
    user_guess = Code.from_string(gets.chomp)
    self.print_matches(user_guess)
    user_guess == @secret_code
  end
end
