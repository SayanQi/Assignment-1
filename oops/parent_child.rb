# Write a program to call a superclass constructor from sub-class using the super() method.

class Parent

  attr_accessor :name
  attr_accessor :age

  # constructore created
  def initialize name, age
    @name = name
    @age = age
  end

end

# inherited by parent
class Child < Parent

  # constructor created
  def initialize(name, age)
    super name, age
  end

end

obj = Child.new "Sayan", 22
puts "#{obj.name}"
