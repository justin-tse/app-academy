# Write a method unique_elements that takes in an array and returns a new array
# where all duplicate elements are removed. Solve this using a hash.

def unique_elements(arr)
  hash = Hash.new(0)
  arr.each { |ele| hash[ele] += 1}
  hash.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts