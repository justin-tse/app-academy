# primes.rb
require "byebug"
def prime?(num)
  (1..num).each do |idx|
    if num % idx == 0
      return false
    end
  end
end

# debugging
def prime?(num)
    return false if num < 2
    (2...num).each do |idx|
        if num % idx == 0
            return false
        end
    end
    true
end

def primes(num_primes)
    debugger
  ps = []
  num = 1
  while ps.count < num_primes
    primes << num if prime?(num)
  end
end

# debugging
def primes(num_primes)
  ps = []
  num = 1
  while ps.count < num_primes
    ps << num if prime?(num)
    num += 1
  end
  ps
end

if __FILE__ == $PROGRAM_NAME
  puts primes(100)
end
