p [11, 7, 2, 4].inject { |acc, el| acc + el }

[11, 7, 2, 4].inject do |acc, el|
    p acc
    p "el = "
    p el
    p "####step####"
    if el < acc
        el
        p "result el= "
        p el
    else
        acc
        p "result acc= "
        p acc
    end
end # => 2

[11, 7, 2, 4].inject do |acc, el|
    if el < acc
        el
    else
        acc
    end
end # => 2

# The key to understanding inject is to remember that the accumulator will be
# reassigned to the result of the block on every iteration. Because inject
# performs a simple reassignment to the accumulator, we can design any block
# to control how the accumulator should change.

# Inject with a default accumulator
p [11, 7, 2, 4].inject(100) { |acc, el| acc + el }

[11, 7, 2, 4].inject(0) do |acc, el|
    if el.even?
        acc + el
        p (acc + el)
    else
        acc
        p acc
    end
end # => 6