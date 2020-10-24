def element_count(array)
  count = Hash.new(0)
  array.each { |ele| count[ele] += 1 }
  count 
end

def char_replace!(str, hash)
  str.split("").each.with_index { |char, i| str[i] = hash[char] if hash.has_key?(char) }
  str
end

def product_inject(array)
  array.inject { |product, el| product * el }
end