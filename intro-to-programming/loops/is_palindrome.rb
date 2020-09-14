# Write a method is_palindrome(word) that takes in a string word and returns
# the true if the word is a palindrome, false otherwise. A palindrome is a word
# that is spelled the same forwards and backwards.

def is_palindrome(word)
  if word == reverse(word)
    return true
  end
  false
end

def reverse(word)
  reverse_word = ""
  word.each_char { |char| reverse_word = char + reverse_word }
  reverse_word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false