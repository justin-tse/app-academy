# Write a method abbreviate_sentence that takes in a sentence string and returns
# a new sentence where every word longer than 4 characters has all of it's
# vowels removed.

def abbreviate_sentence(sent)
  new_sent = []
  sent.split.each do |word|
    if word.length <= 4 
      new_sent << word
    else
      new_sent << remove_vowels(word)
    end
  end

  new_sent.join(" ")
end

def remove_vowels(word)
  new_word = ""
  vowels = "aeiou"
  word.each_char do |char|
    if !vowels.include?(char)
      new_word += char
    end
  end
  new_word
end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"