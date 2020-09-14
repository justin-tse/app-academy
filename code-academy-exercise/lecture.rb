# sym = :hello
# str = "hello"
# # p sym.object_id
# # p sym.object_id
# # p sym.object_id
# # p sym.object_id
# # sym[1] = "j"
# str[0] = "j"``
# p sym
# p str

# # p str.object_id
# # p str.object_id
# # p str.object_id
# # p str.object_id

# p "hello".object_id`
# p "hello".object_id
# p "hello".object_id
# p "hello".object_id

# p :hello.object_id
# p :hello.object_id
# p :hello.object_id
# p :hello.object_id

# bootcamp_1 = {:name=>"app academy", :color=>"red"}
# p bootcamp_1
# bootcamp_2 = {name: "app academy", color: "red"}
# p bootcamp_2
# p bootcamp_2 == bootcamp_1
# p bootcamp_2[:name] == bootcamp_1[:name]

# def saywhat(what, n=1)
#   what * n
# end

# p saywhat("hi", 3) 

# def pis(hash1, name, hash2) 
#   p hash1
#   p name
#   p hash2
# end

# pis({"color": "red", "name": "Tom"},"~~~~~~~~~", {"color": "red", "name": "Tom"})
# pis({"color": "red", "name": "Tom"},"~~~~~~~~~", {"color"=> "red", "name"=> "Tom"})

# def say_hello(first_name, *other_args)
#   p first_name
#   p other_args
# end
# say_hello("alvin", "zablan", "teacher", "tom")
# say_hello("Justin")

# def say_hello(first_name, lastname)
#   p first_name
#   p lastname
# end

# arr = ["a", "b"]
# say_hello(*arr)


# p *arr

# teacher = ["oliver", "simacha", "tommy"]
# new_teacher = [[teacher]]
# p new_teacher
# p *new_teacher
# new_teacher2 =  *new_teacher
# p new_teacher2

# hash = {aa: 1, b:2}
# new_hash = { **hash, c:3 }
# p new_hash

arr = [2, 3, 1, 7]

result = arr.inject(100) {  |acc, el| acc + el }
p result
