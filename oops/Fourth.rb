# Write a program to include a module inside the class.

module ExModule

  # define a method
  def printMethod
    puts "PrintMethod of ExModule"
  end

  # define a second method
  def secondMethod
    puts "secondMethod of ExModule"
  end

end

class Fourth

# includes module
  include ExModule

end

obj = Fourth.new
obj.printMethod
obj.secondMethod
