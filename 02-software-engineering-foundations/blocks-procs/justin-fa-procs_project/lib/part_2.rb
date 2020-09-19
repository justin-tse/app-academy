def reverser(string, &prc)
  reverse_string = ""
  string.each_char { |char| reverse_string = char + reverse_string }
  prc.call(reverse_string)
end

# Optimized code
def reverser(string, &prc)
  prc.call(string.reverse)
end

def word_changer(sentence, &prc)
  sentence.split.map { |word| prc.call(word) }.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  [num, prc_1.call(num), prc_2.call(num)].max
end

# Optimized code the meaning is "should return the greater result of
# the two procs when each is passed the number"
def greater_proc_value(num, prc_1, prc_2)
  [prc_1.call(num), prc_2.call(num)].max
end

def and_selector(array, prc_1, prc_2)
  array.select { |ele| prc_1.call(ele) && prc_2.call(ele) }
end

def alternating_mapper(array,  prc_1, prc_2)
  array.each_with_index.map do |ele, index|
    if index.even?
      prc_1.call(ele)
    else
      prc_2.call(ele)
    end
  end
end