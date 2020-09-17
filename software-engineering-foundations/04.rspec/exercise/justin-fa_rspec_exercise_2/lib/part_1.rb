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