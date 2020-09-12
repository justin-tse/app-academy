# Write a method is_div_by_5(number) that takes in a number and returns the 
# boolean true if the given number is divisible by 5, false otherwise
def is_div_by_5(number)
  if number % 5 == 0
    return true
  end
  return false
end

puts is_div_by_5(10) # => true
puts is_div_by_5(40) # => true
puts is_div_by_5(42) # => false
puts is_div_by_5(8)  # => false