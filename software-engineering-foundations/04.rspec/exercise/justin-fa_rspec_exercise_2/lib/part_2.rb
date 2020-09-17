def palindrome?(string)
  reverse_string = ""
  string.each_char { |char| reverse_string = char + reverse_string }
  string == reverse_string
end

# Optimized code
def palindrome?(string)
  string.each_char.with_index do |char, i|
    if string[i] != string[-i-1]
      return false
    end
  end
  true
end


def substrings(string)
  array = []
  new_str = ""
  chars = string.split("")
  chars.each.with_index do |char_1, index_1|
    new_str = char_1
    array << new_str
    chars.each.with_index do |char_2, index_2|
      if index_2 > index_1
        new_str += char_2 
        array << new_str
      end
    end
  end

  array
end

# Optimized code
def substrings(string)
  array = []
  (0...string.length).each do |start_index|
    (start_index...string.length).each do |end_index|
      array << string[start_index..end_index]
    end
  end

  array
end

def palindrome_substrings(string)
  array = substrings(string)
  array.select { |str| palindrome?(str) && str.length > 1}
end

# Optimized code
def palindrome_substrings(string)
  substrings(string).select { |substr| palindrome?(substr) && substr.length > 1 }
end