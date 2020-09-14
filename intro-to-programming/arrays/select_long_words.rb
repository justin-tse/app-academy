# Write a method select_long_words(words) that takes in an array of words and
# returns a new array containing all of the words of the original array that
# are longer than 4 characters.

def select_long_words(words)
  long_words = []

  i = 0
  while i < words.length
    if words[i].length > 4
      long_words << words[i]
    end

    i += 1
  end

  long_words
end

def select_long_words(words)
  words.select { |word| word.length > 4}
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]

