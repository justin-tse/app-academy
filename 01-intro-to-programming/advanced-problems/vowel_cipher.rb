# Write a method vowel_cipher that takes in a string and returns a new string
# where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
  vowels = "aeiou"
  new_str = ""

  string.each_char do |char|
    if vowels.include?(char)
      old_index = vowels.index(char)
      new_index = old_index + 1
      new_char = vowels[new_index % 5]
      new_str += new_char
    else
      new_str += char
    end
  end
  new_str
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap