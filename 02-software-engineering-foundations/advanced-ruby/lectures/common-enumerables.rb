#######    1 all?     #######
# Return true when all elements result in true when passed into the block.
p "#######    1 all?     #######"
p [2, 4, 6].all? { |el| el.even? }
p [2, 3, 6].all? { |el| el.even? }
p [2, 3, 6].all? { |el| el.odd? }
p [1, 3, 5].all? { |el| el.odd? }


#######   2 any?    #######
# Return true when all at least one element results in true when passed into the block.
p "#######   2 any?    #######"
p [3, 4, 7].any? { |el| el.even? }
p [3, 5, 7].any? { |el| el.even? }


#######   3 none?   #######
# Return true when no elements of result in true when passed into the block.
p "#######   3 none?   #######"
p [1, 3, 5].none? { |el| el.even? }
p [1, 4, 5].none? { |el| el.even? }

#######   4 one?   #######
p "#######   4 one?   #######"
p [1, 4, 5].one? { |el| el.even? }
p [1, 4, 6].one? { |el| el.even? }

#######   5 count   #######
p "#######   5 count   #######"
p [1, 2, 3, 4, 5, 6].count { |el| el.even? }


#######   6 sum    #######
p "#######   6 sum    #######"
p [1, 2, 4].sum


#######  7 max and min  #######
p "#######  7 max and min  #######"
p [1, 3, 6, 2].max
p [1, 3, 6, 2, -1].min
p [].min

#######  8 flatten   #######
p "#######  8 flatten   #######"
# Return the 1 dimensional version of any multidimensional array
multi_d = [
  [["a", "b"], "c"],
  [["d"], ["e"]],
  "f"
]
p multi_d.flatten

multi_d2 = [
  [["a", "b"]],
   "c", [["d"], ["e"]],
  "f"
]
p multi_d2.flatten
p multi_d == multi_d2