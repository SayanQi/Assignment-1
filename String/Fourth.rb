#Questions: Write a Ruby program to remove a substring from a specified string.
#get input from user
puts "Enter a string"
str = gets.chomp

#get char to be find
puts "Enter a string to remove"
char = gets.chomp

#check occurences
if (str.count char) > 0
  puts str.gsub(char,"")
else
  puts "No #{char} in #{str}"
end
