# Write a method most_vowels that takes in a sentence string and returns the
# word of the sentence that contains the most vowels.

def most_vowels(sentence)
  parts = sentence.split
  hash = {}
  parts.each { |word| hash[word] =  count_vowels(word)}
  hash.sort_by { |k, v| v }[-1][0]
end

def count_vowels(word)
  count = 0
  vowels = "aeiou"
  word.each_char { |c| count += 1 if vowels.include?(c)}
  count
end

print most_vowels("what a wonderful life") #=> "wonderful"