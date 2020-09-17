def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(array)
  array.sum / (array.length).to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  new_str = str.split(" ").map.with_index do |word, index|
    if index.even?
      word.upcase
    else
      word.downcase
    end
  end
  new_str.join(" ")
end
