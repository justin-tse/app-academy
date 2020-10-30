# https://open.appacademy.io/learn/full-stack-online/software-engineering-foundations/meddling-medley

# Meddling Medley

# Phase 1: Modest problems.
def duos(str)
    count = 0
    str.each_char.with_index { |char, i| count += 1 if str[i] == str[i + 1] }
    count
end

# p duos('bootcamp')      # 1
# p duos('wxxyzz')        # 2
# p duos('hoooraay')      # 3
# p duos('dinosaurs')     # 0
# p duos('e')             # 0

def sentence_swap(sentence, swap)
    (sentence.split.map do |word|
        if swap.has_key?(word)
            word = swap[word]
        else
            word
        end
    end).join(" ")
end

# p sentence_swap('anything you can do I can do',
#     'anything'=>'nothing', 'do'=>'drink', 'can'=>'shall'
# ) # 'nothing you shall drink I shall drink'

# p sentence_swap('what a sad ad',
#     'cat'=>'dog', 'sad'=>'happy', 'what'=>'make'
# ) # 'make a happy ad'

# p sentence_swap('keep coding okay',
#     'coding'=>'running', 'kay'=>'pen'
# ) # 'keep running okay'

def hash_mapped(hash, prc_1, &prc_2)
    new_hash = {}
    hash.each do |k, v|
        new_hash[prc_2.call(k)] = prc_1.call(v)
    end
    new_hash
end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({'a'=>4, 'x'=>7, 'c'=>-3}, double) { |k| k.upcase + '!!' }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({-5=>['q', 'r', 's'], 6=>['w', 'x']}, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

def counted_characters(str)
    count = Hash.new(0)
    chars = []
    str.each_char do |char|
        count[char] += 1
    end
    count.select { |k, v| v > 2 }.keys
end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []

def triplet_true(str)
    (0...str.length).each { |i| return true if str[i] == str[i + 1] && str[i + 1] == str[ i + 2] }
    false
end

# p triplet_true('caaabb')        # true
# p triplet_true('terrrrrible')   # true
# p triplet_true('runninggg')     # true
# p triplet_true('bootcamp')      # false
# p triplet_true('e')             # false

def energetic_encoding(str, hash)
    str.each_char.with_index do |char, i|
        if hash.has_key?(char)
            str[i] = hash[char]
        elsif char != " "
            str[i] = "?"
        end
    end
    str
end

# p energetic_encoding('sent sea',
#     'e'=>'i', 's'=>'z', 'n'=>'m', 't'=>'p', 'a'=>'u'
# ) # 'zimp ziu'

# p energetic_encoding('cat',
#     'a'=>'o', 'c'=>'k'
# ) # 'ko?'

# p energetic_encoding('hello world',
#     'o'=>'i', 'l'=>'r', 'e'=>'a'
# ) # '?arri ?i?r?'

# p energetic_encoding('bike', {}) # '????'


def uncompress(str)
    new_str = ""
    str.each_char.with_index do |char, i|
        if char.to_i != 0
            new_str += str[i - 1] * char.to_i
        end            
    end
    new_str
end

# p uncompress('a2b4c1') # 'aabbbbc'
# p uncompress('b1o2t1') # 'boot'
# p uncompress('x3y1x2z4') # 'xxxyxxzzzz'

# Phase 2: More difficult, maybe?

def conjunct_select(arr, *prcs)
    new_arr = []
    arr.each do |el|
        new_arr << el if prcs.all? { |prc| prc.call(el) }
    end
    new_arr
end

# is_positive = Proc.new { |n| n > 0 }
# is_odd = Proc.new { |n| n.odd? }
# less_than_ten = Proc.new { |n| n < 10 }

# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive) # [4, 8, 11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd) # [11, 7, 13]
# p conjunct_select([4, 8, -2, 11, 7, -3, 13], is_positive, is_odd, less_than_ten) # [7]

def convert_pig_latin(sentence)
    vowels = "aeiou"
    words = sentence.split
    (words.map do |word|
        if word.length < 3
            word
        else
            if vowels.include?(word[0].downcase)
                word += "yay"
            else
                if word.capitalize == word
                    non_vowel_begin(word).capitalize
                else
                    non_vowel_begin(word)
                end
            end
        end
    end).join(" ")
end

def non_vowel_begin(word)
    vowels = "aeiou"
    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            return word[i..-1] + word[0...i] + "ay"
        end              
    end
    word
end

# p convert_pig_latin('We like to eat bananas') # "We ikelay to eatyay ananasbay"
# p convert_pig_latin('I cannot find the trash') # "I annotcay indfay ethay ashtray"
# p convert_pig_latin('What an interesting problem') # "Atwhay an interestingyay oblempray"
# p convert_pig_latin('Her family flew to France') # "Erhay amilyfay ewflay to Ancefray"
# p convert_pig_latin('Our family flew to France') # "Ouryay amilyfay ewflay to Ancefray"


def reverberate(sentence)
    vowels = "aeiou"
    words = sentence.split
    new_words = ""
    (words.map do |word|
        if word.length < 3
            word
        else
            if vowels.include?(word[-1].downcase)
                if word.capitalize == word
                    word = word * 2
                    word.capitalize
                else
                    word = word * 2
                end
            else
                if word.capitalize == word
                    non_vowel_begin(word).capitalize
                else
                    non_vowel_begin(word)
                end
            end
        end
    end).join(" ")
end

def non_vowel_begin(word)
    vowels = "aeiou"
    new_word = ""
    word.each_char.with_index do |char, i|
        if vowels.include?(char)
            new_word = word[0...i] + word[i..-1] * 2
        end              
    end
    new_word
end

# p reverberate('We like to go running fast') # "We likelike to go runninging fastast"
# p reverberate('He cannot find the trash') # "He cannotot findind thethe trashash"
# p reverberate('Pasta is my favorite dish') # "Pastapasta is my favoritefavorite dishish"
# p reverberate('Her family flew to France') # "Herer familyily flewew to Francefrance"

def disjunct_select(arr, *prcs)
    arr.select do |el|
        prcs.any? { |prc| prc.call(el) }
    end
end

# longer_four = Proc.new { |s| s.length > 4 }
# contains_o = Proc.new { |s| s.include?('o') }
# starts_a = Proc.new { |s| s[0] == 'a' }

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
# ) # ["apple", "teeming"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o
# ) # ["dog", "apple", "teeming", "boot"]

# p disjunct_select(['ace', 'dog', 'apple', 'teeming', 'boot', 'zip'],
#     longer_four,
#     contains_o,
#     starts_a
# ) # ["ace", "dog", "apple", "teeming", "boot"]

def alternating_vowel(sentence)
    words = sentence.split
    words.map!.with_index do |word, i|
        vowel_change(word, i)
    end
    words.join(" ")
end

def vowel_change(word, i)
    vowels = "aeiou"
    indices = []
    word.each_char.with_index do |char, j|
        if vowels.include?(char)
            indices << j
        end
    end
    if i % 2 == 0 && indices.length > 0
        index = indices[0]
    elsif i % 2 == 1 && indices.length > 0
        index = indices[-1]
    else
        return word
    end
    word[0...index] + word[index+1..-1]
    # word.delete("a")
end

# p alternating_vowel('panthers are great animals') # "pnthers ar grat animls"
# p alternating_vowel('running panthers are epic') # "rnning panthrs re epc"
# p alternating_vowel('code properly please') # "cde proprly plase"
# p alternating_vowel('my forecast predicts rain today') # "my forecst prdicts ran tday"

def silly_talk(sentence)
    vowels = "aeiou"
    words = sentence.split
    new_words = ""
    (words.map do |word|
        if vowels.include?(word[-1].downcase)
                word += word[-1]
        else
            if word.capitalize == word
                non_vowel_begin(word).capitalize
            else
                non_vowel_begin(word)
            end
        end
    end).join(" ")
end

def non_vowel_begin(word)
    vowels = "aeiou"
    indices = []
    new_word = ""
    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            indices << i
            new_word += char + "b" + char
        else
            new_word += char
        end              
    end
    new_word
end

# p silly_talk('Kids like cats and dogs') # "Kibids likee cabats aband dobogs"
# p silly_talk('Stop that scooter') # "Stobop thabat scobooboteber"
# p silly_talk('They can code') # "Thebey caban codee"
# p silly_talk('He flew to Italy') # "Hee flebew too Ibitabaly"

def compress(str)
    compress_str = ""
    count = 1
    str.each_char.with_index do |char, i|
        if str[i + 1] == char
            count += 1
        elsif count == 1
            compress_str += char
        else
            compress_str += char + count.to_s
            count = 1
        end
    end
    compress_str
end

p compress('aabbbbc')   # "a2b4c"
p compress('boot')      # "bo2t"
p compress('xxxyxxzzzz')# "x3yx2z4"