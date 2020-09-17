# Write a method that takes in a string and returns the number of times that
# the same letter repeats twice in a row.

# method 1
def double_letter_count(string)
  count = 0
  string.split.each { |word| count += count(word) }
  count
end

def count(word)
  i = 0
  while i < word.length - 1
    if word[i] == word[i + 1]
      return 1
    end
    i += 1
  end
  0
end

# method 2
def double_letter_count(string)
  count = 0
  string.each_char.with_index do |char, i|
    if char == string[i + 1]
      count += 1
    end
  end
  count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1