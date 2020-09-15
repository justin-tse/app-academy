# Write a method pyramid_sum that takes in an array of numbers representing
# the base of a pyramid. The function should return a 2D array representing
# a complete pyramid with the given base. To construct a level of the pyramid,
# we take the sum of adjacent elements of the level below.

# For example, the base [1, 4, 6] gives us the following pyramid
#     15
#   5   10
# 1   4    6

def pyramid_sum(base)
  new_array = [base]
  (base.length-1).times do
    new_array.unshift(adjacent_sum(new_array[0]))
  end
  new_array
end

def adjacent_sum(array)
  new_array = []
  array.each.with_index do |num, i|
    if i < array.length - 1
      new_array << num + array[i + 1]
    end
  end
  new_array
end

print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts