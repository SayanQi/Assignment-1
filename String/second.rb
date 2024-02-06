# Question : Write a Ruby program to remove all white space within a string.
# get input from user
puts "Enter a string"
str = gets.chomp

# remove  white space with delete function
dl_str = str.delete(" ")

# remove whitespaced with gsub
gs_str = str.gsub(/\s+/,"")

puts "With delete #{dl_str}"
puts "With gsub #{gs_str}"
