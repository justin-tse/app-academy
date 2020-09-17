def partition(array, num)
  first_subarray = []
  second_subarray = []
  array.each do |n|
    if n >= num
      second_subarray << n
    else
      first_subarray << n
    end
  end
  
  [first_subarray, second_subarray]
end

# Optimized the method partition's code => variable name should be more meaningful!
def partition(array, num)
  less = []
  more = []
  array.each do |n|
    if n >= num
      more << n
    else
      less << n
    end
  end
  
  [less, more]
end


def merge(hash_1, hash_2)
  new_hash = {}
  hash_1.each { |key, value| new_hash[key] = value }
  hash_2.each { |key, value| new_hash[key] = value }
  new_hash
end


def censor(string, array)
  new_words = string.split(" ")
  vowels = "aeiou"
  new_words.map! do |word|
    if array.include?(word.downcase)
      word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
           word[i] = "*"
        end
      end
    else
      word
    end
  end

    new_words.join(" ")
end

 # Optimized the method censor's code => the method is too long and use more than two loops, 
 # you can use a helper method to optimize it.
def censor(string, array)
  new_words = (string.split).map do |word|
    if array.include?(word.downcase)
      star_vowels(word)
    else
      word
    end
  end

  new_words.join(" ")
end

def star_vowels(word)
  vowels = "aeiouAEIOU"
  new_word = ""
  word.each_char do |char|
    if vowels.include?(char)
      new_word += "*"
    else
      new_word += char
    end
  end
  
  new_word
end

def power_of_two?(num)

  while true
    if num == 1.0
      return true
    elsif num < 1
      return false
    end
    num = num / 2.0
  end
  
end

# Optimized the method power_of_two?'s code => product is better than divide
def power_of_two?(num)
  product = 1
  while product < num
    product *= 2
  end

  num == product
end