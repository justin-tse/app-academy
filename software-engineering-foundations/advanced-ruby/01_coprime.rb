# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num1, num2)
  if num1 <= num2
    num = min(num1, num2)
  end
  (2...num).each do |i|
    if num1 % i == 0 && num2 % i == 0
      return false
    end
  end
  return true
end

# def prime?(num) 
#   (2...num).each do |i|
#     if num % i == 0
#       return false
#     end
#     end
#     return true
#   end
# end

p coprime?(25, 12)    # => true
# p coprime?(7, 11)     # => true
# p coprime?(30, 9)     # => false
# p coprime?(6, 24)     # => false
