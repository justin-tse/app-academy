# p "-------all?-------"
# p [2, 4, 6].all? { |el| el.even? }
# p [2, 3, 5].all? { |el| el.even? }
# puts
# p "-------any?-------"
# p [2, 3, 6].any? { |el| el.even? }
# p [1, 3, 5].any? { |el| el.even? }
# puts
# p "-------none?-------"
# p [2, 3, 6].none? { |el| el.even? }
# p [1, 3, 5].none? { |el| el.even? }
# puts
# p "-------one?-------"
# p [2, 3, 6].one? { |el| el.even? }
# p [1, 3, 5].one? { |el| el.even? }
# p [2, 3, 5].one? { |el| el.even? }
# puts
# p "-------count-------"
# p [1, 2, 3, 4, 5, 6].count { |el| el.even? }
# p [1, 3, 5].count { |el| el.even? }
# puts
# p "-------sum-------"
# p [1, -3, 5].sum

# puts
# p "-------max min-------"
# p [1, -3, 5].max
# p [1, -3, 5].min
# p [].max
# puts
# p "-------flatten-------"
# multi_d = [
#     [["a", "b"], "c"],
#     [["d"], ["e"]],
#     "f", [""]
# ]

# p multi_d.flatten
# puts
# p "-------one-------"
# puts
# p "-------gets-------"
# p "------User Input------" 


# puts("Type in your name!")
# name = gets
# puts(name)
# puts(name)
# puts(name)

# "Converting Between Strings and Integers"
# p "-------.to_i   .to_s-------"

# puts("I will add 5 to your number; type a number!")
# input = gets
# puts(5 + input.to_i)


# "The chomp method is called on a string and removes any newlines at 
# the end of the string. It is very common to write:"

# puts ("Type in your name!")
# name = gets
# puts("Hello " + name + "!")

# "The “!” will be placed on the following line. 
# That’s because Ruby reads the characters “N”, “e”, “d”, 
# and enter. Because it reads the enter character 
# (technically called the newline character), 
# there’s a newline after the “d” but before the “!” in the output."

# "The chomp method is called on a string and removes any newlines at 
# the end of the string. It is very common to write:"

# puts "After using chomp"
# puts ("Type in your name!")
# name = gets.chomp
# puts ("Hello " + name + "!")

# variable in the print statement
print "input your name!"
name = gets.chomp
print "My name is #{name}!"
puts

#another Code comments method#
=begin
Unless statement in Ruby.
An unless statement in Ruby is used to evaluate an expression. 
If the expression evaluates to false, then the code following unless
is executed.
=end

#Unless statement in Ruby.
# This construct requires a "number" variable to be less than 10 
# in order to execute:
print "Enter a number: "
number = gets.chomp.to_i
unless number > 10
    puts "number is less than 10."
end
if number > 10
  puts "#{number} is a great number"
end

# Ruby until Loop
# Putting a block of code inside an until loop in Ruby will cause the code to
# run as long as its condition remains false. It’s only when the condition 
# becomes true that the loop stops.

# If the block of code doesn’t allow for a way for the condition to be changed
# to true then the loop will continue forever and it will cause an error.

movies = {
  God: 5,
  Love: 4.5
}

puts "Please input your choice"
choice = gets.chomp

case choice
  when "add"
  puts "movie title"
  title = gets.chomp.to_sym
  puts "movie rating"
  rating = gets.chomp.to_i
  if movies[title_to_sym] == nil

    movies[title] = rating
  else
    puts "The movies already exists!!"
  end
  when "update"
  title = gets.chomp.to_sym
  if movies[title.downcase] == nil
    puts "The movies is not exist, please enter another movie"
  else
  puts "Plaese update the rating"
  rating = gets.chomp.to_i
  movies[title] = rating
  end
  when "display"
  movies.each { |movie, rating| puts "#{movie}: #{rating}"}
  when "delete"
  if movies[title] == nil
    puts "error"
  else
    movies.delete(title.to_sym)
  end
  else
  puts "Error!"
end