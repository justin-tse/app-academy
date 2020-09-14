# Write a method factors_of(num) that takes in a num and returns an array of
# all positive numbers less than or equal to num that can divide num.

def factors_of(num)
  array = []

  i = 1
  while i <= num
    if num % i == 0
      array << i
    end 

    i += 1
  end
  array
end

def factors_of(num)
  (1..num).select { |i| num % i == 0}
end

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]