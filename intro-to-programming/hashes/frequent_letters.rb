# Write a method frequent_letters that takes in a string and returns an array
# containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  array = []
  count = Hash.new(0)
  string.each_char { |c| count[c] += 1 }
  count.each { |k, v| array << k if v > 2}
  array
end


print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts
