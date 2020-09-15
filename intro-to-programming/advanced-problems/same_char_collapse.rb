# Write a method same_char_collapse that takes in a string and returns a
# collapsed version of the string. To collapse the string, we repeatedly delete
# 2 adjacent characters that are the same until there are no such adjacent
# characters. If there are multiple pairs that can be collapsed, delete the
# leftmost pair. For example, we take the following steps to collapse
# "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

def same_char_collapse(str)
  collases =true
  while collases
    chars = str.split("")
    collases = false
    chars.each.with_index do |char, i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        collases = true
        break
      end
    end
    str = chars.join("")
  end
  str
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy

puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
