# Write a method rotate_array that takes in an array and a number. The method
# should return the array after rotating the elements the specified number of
# times. A single rotation takes the last element of the array and moves it to
# the front.

def rotate_array(arr, num)
  new_arr = []
  arr.each_with_index {|ele, i| new_arr[(i + num) % arr.length] = ele}
  return new_arr
end

def rotate_array(arr, num)
  num.times do
    last = arr.pop
    arr.unshift(last)
  end
  arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
# ["d", "a", "b", "c"]
puts