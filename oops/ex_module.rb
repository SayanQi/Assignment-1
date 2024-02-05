# Write a program to include a module inside the class.

module ExModule

  # define a method
  def print_method
    puts "PrintMethod of ExModule"
  end

  # define a second method
  def second_method
    puts "secondMethod of ExModule"
  end

end

class Fourth

# includes module
  include ExModule

end

obj = Fourth.new
obj.print_method
obj.second_method
