# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"

class Array
  def span
    return nil if self.length == 0
    self.max - self.min
  end

# Optimize my code
  def span
    return nil if self.empty?
    self.max - self.min
  end
  
  def average
    return nil if self.length == 0
    self.sum * 1.0 / self.length
  end

# Optimize my code
  def average
    return nil if self.empty?
    self.sum / self.length.to_f
  end

  def median
    return nil if self.length == 0
    length = self.length
    if length.odd?
      self.sort[(length - 1) / 2]
    else
      (self.sort[length/ 2]  + self.sort[length/ 2 - 1]) * 1.0 / 2
    end
  end

# Optimize my code
  def median
    return nil if self.empty?
    
    mid_index = self.length / 2
    sorted = self.sort
    if self.length.odd?
      return sorted[mid_index]
    else
      (sorted[mid_index - 1] + sorted[mid_index]) / 2.0
    end
  end

  def counts
    count = Hash.new(0)
    self.each { |word| count[word] += 1 }
    count
  end

  def my_count(input_word)
    count = 0
    self.each { |word| count += 1 if word == input_word}
    count
  end

  def my_index(input_word)
    self.each_with_index do |word, index|
      if word == input_word
        return index
      end
    end
    nil
  end

 # Optimize my code
  def my_index(val)
    self.each_with_index { |word, index| return index if word == val}
    nil
  end

  def my_uniq
    new_array = []
    self.each { |ele| new_array << ele if !new_array.include?(ele)}
    new_array
  end

# Optimize my code
  def my_uniq
    elements = {}
    self.each { |ele| elements[ele] = true }
    elements.keys
  end

  def my_transpose
    new_array = []
    self.each_with_index do |sub_ary, i|
      row = []
      sub_ary.each_with_index do |ele, j|
        row << self[j][i]
      end
      new_array << row
    end
    new_array
  end
end

# Optimize my code
def my_transpose
  transposed = []

  self.each_with_index do |ele, i|
    row = []
    self.each_with_index do |ele, j|
      row << self[j][i]
    end

    transposed << row
  end
  transposed
end