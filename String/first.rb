# Question : Write a Ruby program to lower case, upper case and capitalize all the words of a given string.
# get input from user
puts "Enter a string"
str = gets.chomp

# to uppercase the string
up_str = str.upcase

# to lowercase the string
dn_str = str.downcase

# to capitalize the string
cap_str = str.capitalize

puts "#{str} uppercase -> #{up_str}"
puts "#{str} downase -> #{dn_str}"
puts "#{str} capitalized -> #{cap_str}"
