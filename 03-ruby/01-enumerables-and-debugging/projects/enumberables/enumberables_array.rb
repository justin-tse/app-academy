# Source => https://open.appacademy.io/learn/full-stack-online/ruby/enumerables
require 'byebug'
# 1.Enumerable
class Array
# My Each
    def my_each
        i = 0
        while i < self.length
            yield self[i]
            i += 1
        end
        self
    end

    Optimized the code
    def my_each(&prc)
        self.length.times do |i|
            prc.call(self[i])
        end
        self
    end

# My Select
    def my_select(&prc)
        selcted = []
        self.my_each do |num|
            selcted << num if prc.call(num)
        end
        selcted
    end
# My Reject
    def my_reject(&prc)
        rejected = []
        self.my_each do |num|
            rejected << num if !prc.call(num)
        end
        rejected
    end
# My Any
    def my_any?(&prc)
        self.my_each { |num| return true if prc.call(num) }
        false
    end

    def my_all?(&prc)
        self.my_each { |num| return false if !prc.call(num) }
        true
    end
# 2.Array
# My Flatten
    def my_flatten
        flattened = []  
        self.my_each do |sub|
            debugger
            if sub.is_a?(Integer) 
                flattened << sub
            else
                flattened.concat(sub.my_flatten)
            end
        end
        flattened
    end
# My Zip
    def my_zip(*args)
        zipped = Array.new(self.length) { Array.new([]) }
        (0...self.length).each { |i| zipped[i] << self[i] }
        debugger
        zipped.each.with_index do |arr, i|··
            args.each.with_index do |arg, j|
                arr << arg[i]
            end
            # (0...self.length).each { |j| arr << args[j][i] }
        end
    end

    # Optimized the code
    def my_zip(*arrays)
        zipped = []

        self.length.times do |i|
            subzip = [self[i]]

            arrays.my_each do |array|
                subzip << array[i]
            end

            zipped << subzip
        end

        zipped
    end
# My Rotate
    def my_rotate(n=1)
        # debugger
        i = n
        i = - n if n < 0     
        i.times do
            if n > 0
                a = self.shift
                self << a
            else
                c = self.pop
                self.unshift(c)
            end
        end
        self
    end

    # Optimized the code
    def my_rotate(n=1)
        split_idx = n % self.length
        self.drop(split_idx) + self.take(split_idx)        
    end


# a = [ "a", "b", "c", "d" ]
# p a.my_rotate         #=> ["b", "c", "d", "a"]
# p a.my_rotate(2)      #=> ["c", "d", "a", "b"]
# p a.my_rotate(-3)     #=> ["b", "c", "d", "a"]
# p a.my_rotate(15)     #=> ["d", "a", "b", "c"]

# My Join
    def my_join(separator='')
        string = ''
        self.each.each_with_index do |el, i| 
            if i != self.length - 1
                string += el + separator 
            else
                string += el
            end
        end
        string
    end

# p a = [ "a", "b", "c", "d" ]
# p a.my_join         # => "abcd"
# p a.my_join("$")    # => "a$b$c$d"
# My Reverse
    def my_reverse
        reversed = []
        self.each { |el| reversed = [el] + reversed }
        reversed
    end

    # Optimized the code
    def my_reverse
        reversed = []

        self.my_each do |el|
            reversed.unshift(el)
        end

        reversed
    end

end
# p [ "a", "b", "c" ].my_reverse   #=> ["c", "b", "a"]
# p [ 1 ].my_reverse               #=> [1]
p [1, 2, 3, 4, 5].my_all? { |i| i.even? }