# Write a method, count_vowels(word), that takes in a string word and returns
# the number of vowels in the word. Vowels are the letters a, e, i, o, u.

def count_vowels(word)
  vowels = ["a","e","i","o","u"]
  count = 0
  word.each_char { |char| count += 1 if vowels.include? char }
  count
end

puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2