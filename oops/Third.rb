# Write a program to create a module with variables.

# defined a modue
module Third
  # declare variables
  Var1 = "This is var1";
  Var2 = 89;
  Var3 = nil;
end

# access without creating obj
puts( Third::Var1 )
puts( Third::Var2 )
puts( Third::Var3 )
