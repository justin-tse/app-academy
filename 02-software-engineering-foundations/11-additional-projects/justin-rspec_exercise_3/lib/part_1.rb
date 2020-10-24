def is_prime?(num)
  return false if num < 2
  
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

# Not good method
def nth_prime(n)
  (2..n * 10).select { |i| is_prime?(i) }[n - 1]
end

# Good method
def nth_prime(n)
  count = 0

  num = 1
  while count < n
    num += 1
    count += 1 if is_prime?(num)
  end
  
  num
end

def prime_range(min, max)
  (min..max).select  { |i| is_prime?(i) }
end