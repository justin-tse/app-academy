def my_reject(array, &prc)
  array.select { |el| !prc.call(el) }
end

def my_one?(array, &prc)
  count = 0
  array.each { |el| count += 1 if prc.call(el) }
  count == 1
end

# Optimized my_one?
def my_one?(array, &prc)
  array.count(&prc) == 1
end

def hash_select(hash, &prc)
  # new_hash = Hash.new { |h, k| h[k] = 0 }
  new_hash = {} # also work

  hash.each { |k, v| new_hash[k] = v if prc.call(k, v)}
  new_hash
end

def xor_select(array, prc_1, prc_2)
  array.select { |ele| [prc_1.call(ele), prc_2.call(ele)].one? }
end

# use basic method
def xor_select(array, prc_1, prc_2)
  array.select { |el| (prc_1.call(el) || prc_2.call(el)) && !(prc_1.call(el) && prc_2.call(el)) }
end

def proc_count(val, array)
  count = 0
  array.each { |prc| count += 1 if prc.call(val) }
  count
end

def proc_count(val, array)
  array.count { |prc| prc.call(val) }
end