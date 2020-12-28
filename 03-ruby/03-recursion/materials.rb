def upcase(str)
  return str.upcase if str.length <= 1
  str[0].upcase + upcase(str[1..-1])
end

def iterative_upcase(str)
  str.chars.inject("") do |upcased_str, char|
    upcased_str << char.upcase
  end
end

def reverse(str)
  return str if str.length <= 1 
  str[-1] + reverse(str[0...-1])
end

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left_side = arr[1..-1].select { |el| el < arr.first }
  right_side = arr[1..-1].select { |el| el >= arr.first }
  quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end

arr = (0..100).to_a.shuffle
# p arr
# p quick_sort(arr)

def factorial(n)
  return n if n <= 1
  n * factorial(n - 1)
end

# p factorial(10081)

def count(n)
  return 1 if n <= 1
  count(n - 1) + n
end

p count(10)

class Array
  def quick_sort
    return self if self.length <= 1
    pivot = self.first
    left_side = self[1..-1].select { |el| el < pivot }
    right_side = self[1..-1].select { |el| el >= pivot }
    left_side.quick_sort + [pivot] + right_side.quick_sort
  end
end