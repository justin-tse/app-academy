# Write a method array_translate that takes in an array whose elements
# alternate between words and numbers. The method should return a string where
# each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
  str = ""
  array.each.with_index do |ele, index|
    if index % 2 == 0
      array[index + 1].times { str += ele }
    end
  end
  str
end

def array_translate(array)
  str = ""
  i = 0
  while i < array.length
    ele = array[i]
    num = array[i + 1]
    str += ele * num
    
    i += 2
  end
  str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts