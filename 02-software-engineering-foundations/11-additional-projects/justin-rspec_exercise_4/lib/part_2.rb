def proper_factors(num)
  (1...num).select { |i| num % i == 0 }
end

def aliquot_sum(num)
  proper_factors(num).sum
end

def perfect_number?(num)
  aliquot_sum(num) == num
end

def ideal_numbers(n)
  num = 0
  count = 0
  array = []

  while count < n
    num += 1
    if perfect_number?(num)
      array << num
      count += 1 
    end
  end

  array
end

def ideal_numbers(num)
  nums = []
  i = 1
  while nums.length < num
    nums << i if perfect_number?(i)
    i += 1
  end

  nums
end