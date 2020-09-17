# Write a method format_name that takes in a name string and returns the name
# properly capitalized.

# method 1
def format_name(word)
  new_word = []
  word.split.each { |word| new_word << properly_capitalized(word)}
  new_word.join(" ")
end

def properly_capitalized(word)
  properly_word = ""
  word.each_char.with_index do |char, index|
    if index == 0
      properly_word += char.upcase
    else
      properly_word += char.downcase
    end
  end
  properly_word
end 

# method 2
def format_name(word)
  new_word = []
  word.split.each { |word| new_word << word[0].upcase + word[1..-1].downcase }
  new_word.join(" ")
end


puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"