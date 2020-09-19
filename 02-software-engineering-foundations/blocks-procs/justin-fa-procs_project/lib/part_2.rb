def reverser(string, &prc)
  reverse_string = ""
  string.each_char { |char| reverse_string = char + reverse_string }
  prc.call(reverse_string)
end

def word_changer(sentence, &prc)
  sentence.split.map { |word| prc.call(word) }.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)
  [num, proc_1.call(num), proc_2.call(num)].max
end

def and_selector(array, proc_1, proc_2)
  array.select { |ele| proc_1.call(ele) && proc_2.call(ele) }
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