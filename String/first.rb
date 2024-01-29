# Question : Write a Ruby program to lower case, upper case and capitalize all the words of a given string.
#get input from user
puts "Enter a string"
str = gets.chomp
#to uppercase the string
upStr = str.upcase
#to lowercase the string
dnStr = str.downcase
#to capitalize the string
capStr = str.capitalize
puts "#{str} uppercase -> #{upStr}"
puts "#{str} downase -> #{dnStr}"
puts "#{str} capitalized -> #{capStr}"
