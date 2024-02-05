# Write a program to initialize instance variables using the constructor.

class Parent

  # set attribute accessor
  attr_accessor :name

  # initialize constructor
  def initialize name
    @name = name
  end

end

# created object
obj = Parent.new "Sayan"
puts obj.name
