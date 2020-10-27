# https://open.appacademy.io/learn/full-stack-online/software-engineering-foundations/nauseating-numbers
# Nauseating Numbers

# # Phase 1: No big deal.

def strange_sums(array)
    count = 0
    (0...array.length).each do |i|
        (i + 1...array.length).each do |j|
            count += 1 if array[i] + array[j] == 0
        end
    end

    count
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

def pair_product(array, product)
    (0...array.length).each do |i|
        (i + 1...array.length).each do |j|
            return true if array[i] * array[j] == product
        end
    end
    false
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(str, hash)
    (str.split("").map do |char| 
        if hash.keys.include?(char)
        # if hash.has_key?(char)
            char * hash[char] 
        else
            char
        end
    end).join("")
end

# p rampant_repeats('taco', {'a'=>3, 'c'=>2})             # 'taaacco'
# p rampant_repeats('feverish', {'e'=>2, 'f'=>4, 's'=>3}) # 'ffffeeveerisssh'
# p rampant_repeats('misispi', {'s'=>2, 'p'=>2})          # 'mississppi'
# p rampant_repeats('faarm', {'e'=>3, 'a'=>2})            # 'faaaarm'

def perfect_square(num)
    (1..num).each do |i|
        return true  if i == num / i.to_f
    end
    false
end



# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false


# Phase 2: Nothing you can't handle.

def anti_prime?(num)
    max = 0
    sum_i_array = []
    (1..num).each do |n|
        sum_i = 0
        (1..n).each { |i| sum_i += 1 if n % i == 0 }
        sum_i_array << sum_i
    end
    sum_i_array[-1] == sum_i_array.max
end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

def matrix_addition(matrix_1, matrix_2)
    height = matrix_1.length
    width = matrix_1.first.length
    (0...height).map do |col|
        (0...width).map do |row|
            matrix_1[col][row] + matrix_2[col][row]
        end
    end
end

matrix_a = [[2,5], [4,7]]
matrix_b = [[9,1], [3,0]]
matrix_c = [[-1,0], [0,-1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

def mutual_factors(*nums)
    divisors = Array.new(nums.length)  { Array.new }
    nums.each.with_index do |num, index|
       (1..num).each do |i|
            divisors[index] << i if num % i == 0
        end
    end

    mutual_factors = divisors.first
    divisors.each do |divisor|
       mutual_factors = mutual_factors & divisor 
    end

    mutual_factors
end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]


def tribonacci_number(n)
    return 1 if n == 1 || n == 2
    return 2 if n == 3
    tribonacci_number(n - 3) + tribonacci_number(n - 2) + tribonacci_number(n - 1)
end

# p tribonacci_number(1)  # 1
# p tribonacci_number(2)  # 1
# p tribonacci_number(3)  # 2
# p tribonacci_number(4)  # 4
# p tribonacci_number(5)  # 7
# p tribonacci_number(6)  # 13
# p tribonacci_number(7)  # 24
# p tribonacci_number(11) # 274


# Phase 3: Now we're having fun.

# def matrix_addition_reloaded(*matrices)
#     heigth = matrices.first.length
#     width = matrices.first.first.length
#     matrices.map do |matrix|
#         return nil if matrix.any? { |array| array.length != width} || matrix.length != heigth
#     end

#     (0...height).map do |col|
#         (0...width).map do |row|
#             matrices.map {   }
#         end
#     end

# end

# def matrix_addition(matrix_1, matrix_2)
#     height = matrix_1.length
#     width = matrix_1.first.length
#     (0...height).map do |col|
#         (0...width).map do |row|
#             matrix_1[col][row] + matrix_2[col][row]
#         end
#     end
# # end

# matrix_a = [[2,5], [4,7]]
# matrix_b = [[9,1], [3,0]]
# matrix_c = [[-1,0], [0,-1]]
# matrix_d = [[2, -5], [7, 10], [0, 1]]
# matrix_e = [[0 , 0], [12, 4], [6,  3]]

# p matrix_addition_reloaded(matrix_a, matrix_b)              # [[11, 6], [7, 7]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_c)    # [[10, 6], [7, 6]]
# p matrix_addition_reloaded(matrix_e)                        # [[0, 0], [12, 4], [6, 3]]
# p matrix_addition_reloaded(matrix_d, matrix_e)              # [[2, -5], [19, 14], [6, 4]]
# p matrix_addition_reloaded(matrix_a, matrix_b, matrix_e)    # nil
# p matrix_addition_reloaded(matrix_d, matrix_e, matrix_c)    # nil

def squarocol?(array)
    height = array.length
    width = height
    (0...height).each do |i|
        count_c = 1
        count_r = 1
        (0...width - 1).each do |j|
            count_c += 1 if array[i][j] == array[i][j + 1]
            count_r += 1 if array[j][i] == array[j + 1][i]
        end
        return true if count_c == height || count_r == width
    end
    false
end

# p squarocol?([
#     [:a, :x , :d],
#     [:b, :x , :e],
#     [:c, :x , :f],
# ]) # true

# p squarocol?([
#     [:x, :y, :x],
#     [:x, :z, :x],
#     [:o, :o, :o],
# ]) # true

# p squarocol?([
#     [:o, :x , :o],
#     [:x, :o , :x],
#     [:o, :x , :o],
# ]) # false

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 7],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # true

# p squarocol?([
#     [1, 2, 2, 7],
#     [1, 6, 6, 0],
#     [0, 5, 2, 7],
#     [4, 2, 9, 7],
# ]) # false

def pascals_triangle(num)
    return [[1]] if num == 1
    array = Array.new(num) { Array.new }
    (1...num).each do |col|
        (0...col).each do |i|
            if col == 1 
                array[0][0] = 1
            elsif col == 2
                array[1] = [1,]
            elsif i == 0
                array[col][0] = array[col - 1][0] 
            elsif i == col - 1
                array[col][-1] = array[col - 1][-1] 
            # else
            #     array[col] << array[col - 1][i - 1] + array[col - 1][i]
            end
        end
    end

    array   
end
# p pascals_triangle(5)
# [
#     [1],
#     [1, 1],
#     [1, 2, 1],
#     [1, 3, 3, 1],
#     [1, 4, 6, 4, 1]
# ]

# p pascals_triangle(7)
# # [
# #     [1],
# #     [1, 1],
# #     [1, 2, 1],
# #     [1, 3, 3, 1],
# #     [1, 4, 6, 4, 1],
# #     [1, 5, 10, 10, 5, 1],
# #     [1, 6, 15, 20, 15, 6, 1]
# # ]

# Phase 4: Nauseating.

def mersenne_prime(num)
    count = 0
    result = 1
    while true
        result += 2
        if prime?(result) && form?(result)
            count += 1
        end
       return result if count == num
    end
end

def prime?(num)
    return false if num < 2
    (2...num).each { |i| return false if num % i == 0}
    true
end

def form?(num)
    num += 1 
    while num > 0
        num = num / 2.0
        return true if num == 1
    end
    false
end

# p mersenne_prime(1) # 3
# p mersenne_prime(2) # 7
# p mersenne_prime(3) # 31
# p mersenne_prime(4) # 127
# p mersenne_prime(6) # 131071

def triangular_word?(word)
    alphabet = ("a".."z").to_a
    num = 0
    word.each_char { |char| num += alphabet.index(char) + 1 }
    triangular_num?(num)
end

def triangular_num?(num)
    num_2 = num * 2.0
    (1..num_2).each { |i| return true if num_2 / i.to_f == i.to_f + 1 }
    false
end

# p triangular_word?('abc')       # true
# p triangular_word?('ba')        # true
# p triangular_word?('lovely')    # true
# p triangular_word?('question')  # true
# p triangular_word?('aa')        # false
# p triangular_word?('cd')        # false
# p triangular_word?('cat')       # false
# p triangular_word?('sink')      # false

def consecutive_collapse(array)
    length = array.length
    condition = true
    while condition
        new_array = consecutive(array)
        if new_array.length == array.length
            return new_array
        end    
        array = new_array
    end
end

def consecutive(array)
    new_array = []
    (0...array.length - 1).each do |i|
        if array[i] == array[i + 1] + 1 || array[i] == array[i + 1] - 1 
            new_array = array[0...i] + array[i + 2..-1]
            return new_array
        end
    end
    array
end

# p consecutive_collapse([3, 4, 1])                     # [1]
# p consecutive_collapse([1, 4, 3, 7])                  # [1, 7]
# p consecutive_collapse([9, 8, 2])                     # [2]
# p consecutive_collapse([9, 8, 4, 5, 6])               # [6]
# p consecutive_collapse([1, 9, 8, 6, 4, 5, 7, 9, 2])   # [1, 9, 2]
# p consecutive_collapse([3, 5, 6, 2, 1])               # [1]
# p consecutive_collapse([5, 7, 9, 9])                  # [5, 7, 9, 9]
# p consecutive_collapse([13, 11, 12, 12])              # []


def pretentious_primes(array, n)
    new_array = []
    (2..(array.max * 2)).each do |i|
        new_array << i if prime?(i)            
    end
    array.map do |el|
        new_array.select { |n_el| n_el > el }[0]
    end 
end

def prime?(num)
    return false if num < 2
    (2...num).each { |i| return false if num % i == 0}
    true
end

p pretentious_primes([4, 15, 7], 1)           # [5, 17, 11]
p pretentious_primes([4, 15, 7], 2)           # [7, 19, 13]
p pretentious_primes([12, 11, 14, 15, 7], 1)  # [13, 13, 17, 17, 11]
p pretentious_primes([12, 11, 14, 15, 7], 3)  # [19, 19, 23, 23, 17]
p pretentious_primes([4, 15, 7], -1)          # [3, 13, 5]
p pretentious_primes([4, 15, 7], -2)          # [2, 11, 3]
p pretentious_primes([2, 11, 21], -1)         # [nil, 7, 19]
p pretentious_primes([32, 5, 11], -3)         # [23, nil, 3]
p pretentious_primes([32, 5, 11], -4)         # [19, nil, 2]
p pretentious_primes([32, 5, 11], -5)         # [17, nil, nil]