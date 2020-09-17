# Write a method pig_latin_word that takes in a word string and translates the
# word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
  vowels = "aeiou"
  new_word = ""
  if vowels.include?(word[0])
    new_word = word + "yay"
    return new_word
  end

  word.each_char.with_index do |char, index|
    if vowels.include?(char)
      return new_word = word[index..-1] + word[0...index] +  "ay"
    end
  end

  new_word
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"