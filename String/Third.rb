# Question : Write a Ruby program to count the occurrences of a specified character in a given string.
# get input from user
puts "Enter a string"
str = gets.chomp

# get char to be find
puts "Enter a string to find occurrences"
char = gets.chomp

# check occurences
if (str.count char) > 0
  puts "#{char} occur in #{str} #{str.count char} times!"
else
  puts "No #{char} in #{str}"
end
