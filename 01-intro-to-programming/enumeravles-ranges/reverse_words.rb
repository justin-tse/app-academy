# Write a method reverse_words that takes in a sentence string and returns the
# sentence with the order of the characters in each word reversed. Note that we
# need to reverse the order of characters in the words, do not reverse the
# order of words in the sentence.

def reverse_words(sent)
  new_sent = []
  sent.split.each { |word| new_sent << word.reverse}
  new_sent.join(' ')
end

def reverse_words(sent)
  new_sent = []
  sent.split.each { |word| new_sent << reverse(word) }
  new_sent.join(' ')
end

def reverse(word)
  new_word = ""
  word.each_char {|char| new_word = char + new_word}
  new_word
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'