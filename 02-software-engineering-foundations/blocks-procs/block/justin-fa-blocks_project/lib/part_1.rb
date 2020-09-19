require "byebug"

def select_even_nums(array)
  array.select(&:even?)
end

def reject_puppies(dog)
  dog.reject { |hash| hash["age"] <=2 }
end

# Optimized code use better name of variables
def reject_puppies(dogs)
  dogs.reject { |dog| dog["age"] <=2 }
end

def count_positive_subarrays(array)
  array.count { |subarray| subarray.sum > 0 }
end

def aba_translate(string)
  vowels = "aeiou"
  new_str = ""
  string.each_char.with_index do |char, index|
    new_str += char
    new_str += ("b" + char) if vowels.include?(char)
  end

  new_str
end

# Optimized style of code 
def aba_translate(word)
  vowels = "aeiou"
  new_word = ""

  word.each_char do |char|
    if vowels.include?(char)
      new_word += char + "b" + char
    else
      new_word += char
    end
  end

  new_word
end


def aba_array(array)
  array.map { |string| aba_translate(string) }
end