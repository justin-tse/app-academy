def method(arg1, arg2, *other_args)
  p arg1
  p arg2
  p other_args
end

method('1', '3', '4', '4')
method("aa", "bb")
method("aa", "bb", "cc", "dd", "ee")

arr1 = [[1, 2, 3]]
p arr1
p *arr1

arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]
p arr_3 # => ["a", "b", "c", "d", "e"]

# ** this method only can use in the key is symbol
old_hash = { a:1, b: 2}
new_hash = { **old_hash, c:3 }
p new_hash