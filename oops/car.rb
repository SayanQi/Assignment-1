# Write a program to override the superclass method into sub-class.

# define a class
class Car

  attr_accessor :w , :s

  # constructor method
  def initialize(wheel, speed)
    @w, @s = wheel, speed
  end

end

  # define a subclass
class Bmw < Car

  # change existing getArea method as follows
  def initialize(wheel, speed)
    super wheel, speed
  end

end

  # create an object
  box = Bmw.new(4, 20)

  # print the area using overridden method.
  puts box.s
