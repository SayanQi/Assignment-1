# Write a program to call a superclass constructor from sub-class using the super() method.

class Parent

  def display (name="tat", age=33)
    puts "Name is #{name}, Age is #{age}"
  end

end

# inherited by parent
class Child < Parent

  # overriden method
  def display (name, age)
    super name, age
    puts "Called by sub-class"
  end

end

obj = Child.new
obj.display "Sayan", 22
