# Write a method combinations that takes in an array of unique elements, the
# method should return a 2D array representing all possible combinations of 2
# elements of the array.

def combinations(arr)
  new_arr = []
  arr.each.with_index do |ele1, idx1|
    arr.each.with_index do |ele2, idx2|
      if idx1 < idx2
        new_arr << [ele1, ele2]
      end
    end
  end
  new_arr
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
