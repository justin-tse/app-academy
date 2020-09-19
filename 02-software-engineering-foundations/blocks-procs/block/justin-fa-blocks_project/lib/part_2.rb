def all_words_capitalized?(array)
  array.all? { |word| word.capitalize == word}
end

def no_valid_url?(urls)
  array = ["com", "net", "io", "org"]
  count = 0
  urls.each { |url| count += 1 if array.include?(url.split(".")[-1])}
  urls.none? { |url| count >= 1} 
end

# Optimized code
def no_valid_url?(urls)
  valid_endings = [".com", ".net", ".io", ".org"]
  urls.none? do |url|
    valid_endings.any? { |valid_ending| url.end_with?(valid_ending) }
  end
end

def any_passing_students?(students)
  students.any? { |student| student[:grades].sum / student[:grades].length >= 75 } 
end

# Optimized code
def any_passing_students?(students)
  students.any? { |student| student[:grades].sum * 1.0 / student[:grades].length  >= 75}
end