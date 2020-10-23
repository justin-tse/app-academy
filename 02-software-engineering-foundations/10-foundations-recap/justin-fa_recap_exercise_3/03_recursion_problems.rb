# Recursion Problems
# multiply
# Write a method multiply(a, b) that takes in two numbers and 
# returns their product.

# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator
# Examples
multiply(3, 5)        # => 15
multiply(5, 3)        # => 15
multiply(2, 4)        # => 8
multiply(0, 10)       # => 0
multiply(-3, -6)      # => 18
multiply(3, -6)       # => -18
multiply(-3, 6)       # => -18



# lucas_sequence
# The Lucas Sequence is a sequence of numbers. The first number of the sequence 
# is 2. The second number of the Lucas Sequence is 1. To generate the next number 
# of the sequence, we add up the previous two numbers. For example, the first six 
# numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as an 
# arg. The method should return an array containing the Lucas Sequence up to the 
# given length. Solve this recursively.

# Examples
lucas_sequence(0)   # => []
lucas_sequence(1)   # => [2]    
lucas_sequence(2)   # => [2, 1]
lucas_sequence(3)   # => [2, 1, 3]
lucas_sequence(6)   # => [2, 1, 3, 4, 7, 11]
lucas_sequence(8)   # => [2, 1, 3, 4, 7, 11, 18, 29]



# prime_factorization
# The Fundamental Theorem of Arithmetic states that every positive integer is 
# either a prime or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns an 
# array representing the prime factorization of the given number. This means 
# that the array should contain only prime numbers that multiply together to the 
# given num. The array returned should contain numbers in ascending order.
# Do this recursively.

# Examples
prime_factorization(12)     # => [2, 2, 3]
prime_factorization(24)     # => [2, 2, 2, 3]
prime_factorization(25)     # => [5, 5]
prime_factorization(60)     # => [2, 2, 3, 5]
prime_factorization(7)      # => [7]
prime_factorization(11)     # => [11]
prime_factorization(2017)   # => [2017]