# Write a method consonant_cancel that takes in a sentence and returns a new
# sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  sentence.split.map { |word| vowel_begin(word) }.join(" ")
end

def vowel_begin(word)
  vowels = "aeiou"
  word.each_char.with_index do |char, index|
    if vowels.include?(char)
      return word[index..-1]
    end
  end
  return ""
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"