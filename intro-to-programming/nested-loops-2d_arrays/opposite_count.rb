# Write a method opposite_count that takes in an array of unique numbers.
# The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
  count = 0
  nums.each.with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
      if index1 < index2 && num1 + num2 == 0
        count += 1
      end
    end
  end

  count
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1