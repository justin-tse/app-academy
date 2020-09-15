# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

# def coprime?(num1, num2)
#   divisors1 = prime?(num1)
#   divisors2 = prime?(num2)
#   divisors1.each do |divisor| 
#     if divisors2.include?(divisor)
#       return false
#     end
#   end
#   true
# end

# def prime?(num)
#   array = []
#   (2..num/2).each do |i|
#     if num % i == 0
#       array << i
#     end
#   end
#   array
# end

# Optimized code
def coprime?(num1, num2)
  (2..num1/2).none? { |factor| num1 % factor == 0 && num2 % factor == 0 }
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
