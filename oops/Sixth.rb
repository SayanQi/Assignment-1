# Write a program to override the superclass method into sub-class.

# define a class
class Car
  # constructor method
  def initialize(wheel, speed)
    @w, @s = wheel, speed
  end
  # instance method
  def get_speed
    @w * @s
  end
end

  # define a subclass
class Bmw < Car

  # change existing getArea method as follows
  def get_speed
    @speed = @w * @s
    puts "BMW speed is : #@speed"
  end
end

  # create an object
  box = Bmw.new(4, 20)

  # print the area using overridden method.
  box.get_speed()
