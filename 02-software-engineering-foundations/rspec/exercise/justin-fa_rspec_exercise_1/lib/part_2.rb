def hipsterfy(word)
  vowel = "aeiou"

  i = word.length - 1
  while i >= 0
    if vowel.include?(word[i])
      word[i] = ""
      break
    end
    i -= 1
  end
  
  word
end


def vowel_counts(string)
  vowels = "aeiou"
  hash_count = Hash.new(0)
  string.downcase.each_char { |char| hash_count[char] += 1 if vowels.include?(char) }
  hash_count
end


def caesar_cipher(message, n)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_message = ""
  message.each_char.with_index do |char, i|
    if alphabet.include?(char)
      new_index = alphabet.index(char) + n
      new_message += alphabet[new_index % alphabet.length]
    else
      new_message += char
    end
  end
  new_message
end