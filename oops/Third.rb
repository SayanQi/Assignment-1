# Write a program to create a module with variables.

# defined a modue
module Third
  # declare variables
  Var_1 = "This is var1";
  Var_2 = 89;
  Var_3 = nil;
end

# access without creating obj
puts( Third::Var_1 )
puts( Third::Var_2 )
puts( Third::Var_3 )
