# Write a program to override the superclass method into sub-class.

# class Car
#   def initialize (speed, wheel)
#     @speed = speed
#     @wheel = wheel
#   end

#   def carSpeed
#     puts @speed
#   end
# end

# class Bmw < Car

#   def carSpeed
#     @speedCar = 10 * @speed
#     puts @speedCar
#   end

# end

# obj = Bmw.new (40 , 4)
# obj.carSpeed

# Ruby program of method overriding

# define a class
class Car
  # constructor method
  def initialize(wheel, speed)
    @w, @s = wheel, speed
  end
  # instance method
  def getSpeed
    @w * @s
  end
end

  # define a subclass
class Bmw < Car

  # change existing getArea method as follows
  def getSpeed
    @speed = @w * @s
    puts "BMW speed is : #@speed"
  end
end

  # create an object
  box = Bmw.new(4, 20)

  # print the area using overridden method.
  box.getSpeed()
