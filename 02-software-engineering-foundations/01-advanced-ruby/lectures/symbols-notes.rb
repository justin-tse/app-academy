sym = :hello
p sym
p sym.length
p sym[2]
str = "hello"
p sym == str

str[1] = "f"
# error sym[1] = "f"
p str
p sym

p "hello".object_id
p "hello".object_id
p "hello".object_id

p :hello.object_id
p :hello.object_id
p :hello.object_id

my_bootcamp = { :name=>"App academy", :color=>"red" }
p my_bootcamp
p my_bootcamp[:name]

my_bootcamp2 = { name: "App academy", color: "red" }
p my_bootcamp2 == my_bootcamp