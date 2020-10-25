def zip(*arrays)
  arrs = *arrays
  array_2d = Array.new(arrs[0].length) { Array.new(arrs.length, nil) }
  arrs.each_with_index do |array, col|
    array.each_with_index do |el, row|
      array_2d[row][col] = el
    end
  end

  array_2d
end


def prizz_proc(array, prc_1, prc_2)
  array.select { |el| [prc_1.call(el), prc_2.call(el)].one? }
end

def prizz_proc(array, prc_1, prc_2)
  array.select { |el| (prc_1.call(el) || prc_2.call(el)) && !(prc_1.call(el) && prc_2.call(el)) }
end

def zany_zip(*arrays)
  arrs = *arrays
  length = []
  arrs.each { |arr| length << arr.length }
  array_2d = Array.new(length.max) { Array.new(arrs.length, nil) }
  arrs.each_with_index do |array, col|
    array.each_with_index do |el, row|
      array_2d[row][col] = el
    end
  end

  array_2d
end

def maximum(array, &prc)
  array.inject do |before, after|
    if prc.call(before) > prc.call(after)
      before
    else
      after
    end
  end
end

def my_group_by(array, &prc)
  hash = Hash.new { |h,k| h[k] = [] }
  array.each { |el| hash[prc.call(el)] << el }
  hash  
end

def max_tie_breaker(array, prc_1, &prc_2)
  hash = Hash.new(0)
  array.each { |el| hash[el] = prc_2.call(el) }
  str = hash.keys.select {|k| hash[k] == hash.values.max }[0]
end

def silly_syllables(sent)
  vowels = "aeiou"

  (sent.split.map do |word|
    indexes = []

    word.each_char.with_index do |char, i|   
        indexes << i if vowels.include?(char)
    end
    if indexes.length > 1
      word[indexes[0]..indexes[-1]]
    else
      word
    end

  end).join(" ")

end
