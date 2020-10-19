def hello(person1, person2=nil)
  if person2.nil?
    p "Hello!" + " " + person1
  else
    p "Hello!" + " " + person1 + " and " + person2
  end
end

def repeat(str, n=1)
  p str * n
end
repeat("HHHHH", 8)

hello("Tom")
hello("Tom", "Justin")

# Option Hashes
def modify_string(str, options={"upper"=>false, "repeats"=>1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"

def modify_string(str, options={"upper"=>false, "repeats"=>1})
  str.upcase! if options["upper"]
  p str * options["repeats"]
end

modify_string("bye")