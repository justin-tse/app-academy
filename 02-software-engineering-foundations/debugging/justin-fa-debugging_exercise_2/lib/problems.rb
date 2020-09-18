# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)
  (0..num).reverse_each do |i| 
    return i  if prime?(i) && num % i == 0
  end
end

def prime?(num)
  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end

def unique_chars?(string)
  count = Hash.new(0)
  string.each_char { |c| count[c] += 1 }
  count.values.none? { |num| num > 1}
end

def dupe_indices(array)
  count = Hash.new([])
  array.each.with_index { |char, index| count[char] += [index] }
  new_count = Hash.new([])
  count.each do |k, v|
    if count[k].length != 1 
      new_count[k] = v
    end
  end
  new_count
end

def ana_array(arr_1, arr_2)
  count(arr_1) == count(arr_2)
end

def count(arr)
  count = Hash.new(0)
  arr.each { |str| count[str] += 1}
  count
end