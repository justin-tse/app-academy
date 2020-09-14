# Write a method reverse(word) that takes in a string word and returns the word
# with its letters in reverse order.

def reverse(word)
  reverse_word = ""
  word.each_char { |char| reverse_word = char + reverse_word }
  reverse_word
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"