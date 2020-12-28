# Step to write recursive functions
# 1.Read the problem statement to make sure you fully understand the problem 
# 2. Identify the base case(s) 
# 3. Determine the inductive step 
# 4. Write the function 
# 5. Run the provided test cases to verify you have a working solution 

def sum_to(n)
  return nil if n <= 0
  return 1 if n == 1
  n + sum_to(n - 1)
end

# Test Cases
# p sum_to(5)  # => returns 15
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

def add_numbers(nums_arr)
  return nil if nums_arr.empty?
  return nums_arr.first if nums_arr.length == 1
  nums_arr.first + add_numbers(nums_arr[1..-1])
end

# Test Cases
# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

def gamma_fnc(n)
  return nil if n <= 0
  return n if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

# Test Cases
# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  if flavors.first == favorite
    return true
  else
    ice_cream_shop(flavors[1..-1], favorite)
  end
end

# Test Cases
# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
  # reverse(string[1..-1]) + string[0]
end

# Test Cases
p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""