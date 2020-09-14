# Write a method doubler(numbers) that takes an array of numbers and returns
# a new array where every element of the original array is multiplied by 2.

def doubler(numbers)
  new_numbers = []
  # numbers.each { |num| new_numbers << num * 2 }
  numbers.each { |num| new_numbers.push(num * 2) }
  new_numbers
end

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]