def range(start, end_num)
  return [] if end_num <= start

  range(start, end_num - 1) + [end_num - 1]
end

# p range(1, 5)
# p range(1, 1)
# p range(1, -1)

# recursion 1
def exp1(base, n)
  return 1 if n == 0
  p n
  base * exp1(base, n - 1)
end

# Test case
# p exp1(2, 10)
# p exp1(0, 0)
# p exp1(1, 0)
# p exp1(1, 1)
# p exp1(1, 2)
# p exp1(2, 0)
# p exp1(2, 1)
# p exp1(2, 2)

# recursion 2
def exp2(base, n)
  return 1 if n == 0
  return base if n == 1
  p n
  
  n.even? ? exp2(base, n / 2) * exp2(base, n / 2) : base * exp2(base, (n - 1) / 2) * exp2(base, (n - 1) / 2)
end

# Test case
# p exp2(2, 10)
# p exp2(2, 0)
# p exp2(2, 1)
# p exp2(2, 2)
# p exp2(2, 3)
# p exp2(2, 4)
# p exp2(2, 5)
# p exp2(2, 6)
# p exp2(0, 0)
# p exp2(1, 0)
# p exp2(1, 1)
# p exp2(1, 2)
# p exp2(2, 0)
# p exp2(2, 1)
# p exp2(2, 2)
class Array
  def deep_dup
    self.each do |arr|
      arr.is_a?(Integer) ? [arr]: arr.deep_dup
    end
    self
  end
end

def fibonacci(n)
  return [0] if n == 0
  return [0, 1] if n == 1
  return [0, 1, 1] if n == 2

  seq = fibonacci(n - 1)
  seq << seq[-2] + seq[-1]
end

# Test case
# p fibonacci(0)
# p fibonacci(1)
# p fibonacci(2)
# p fibonacci(3)
# p fibonacci(4)
# p fibonacci(5)
# p fibonacci(6)
# p fibonacci(7)
# p fibonacci(8)

def bsearch(arr, target)
  
end