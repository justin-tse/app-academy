# Write a method even_nums(max) that takes in a number max and returns an array
# containing all even numbers from 0 to max

# def even_nums(max)
#   even_nums = []
#   (0..max).each do |num|
#     if num % 2 == 0
#       even_nums << num
#     end
#   end
#   even_nums
# end

def even_nums(max)
  even_nums = []
  (0..max).each {|num| even_nums << num if num % 2 == 0 }
  even_nums
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]