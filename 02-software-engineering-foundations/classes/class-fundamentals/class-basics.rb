class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def name
    @name
  end

  def age=(new_age)
    @age = new_age
  end

  def color
    @color 
  end

  def meow_at(person)
    puts "#{@name} meows at #{person}"
  end
end

cat_1 = Cat.new("mimi", "red", 5)
p cat_1
p cat_1.name
p cat_1.age = 23
p cat_1.color
cat_1.meow_at("tom")

class Car
  def initialize(color)
    @color = color
  end

  def color
    @color
  end
end

car_1 = Car.new("red")
p car_1.color

car_2 = Car.new("black")
p car_2.color




class Car
  @@num_wheels = 4

  def initialize(color)
    @color = color
  end

  def color
    @color
  end

  def num_wheels
    @@num_wheels 
  end
end

car_1 = Car.new("red")
p car_1.num_wheels

car_2 = Car.new("blue")
p car_2.num_wheels


olll