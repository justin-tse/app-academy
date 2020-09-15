# Write a method greatest_factor_array that takes in an array of numbers and
# returns a new array where every even number is replaced with it's greatest
# factor. A greatest factor is the largest number that divides another with no
# remainder. For example the greatest factor of 16 is 8. (For the purpose of
# this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

# def greatest_factor_array(arr)
#   new_arr = []
#   arr.each do |ele| 
#     if ele.even? 
#      new_arr << ele / 2 
#     else
#       new_arr << ele
#     end
#   end
#   new_arr
# end

def greatest_factor_array(arr)
  new_arr = arr.map do |ele|
    if ele % 2 == 0
      greatest_factor(ele)
    else
      ele
    end
  end
  new_arr
end

# def greatest_factor(num)
#   i = num - 1
#   while i > 0
#     return i if num % i == 0

#     i -= 1
#   end
#   i
# end

def greatest_factor(num)
  (2...num).reverse_each { |i| return i if num % i == 0}
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts