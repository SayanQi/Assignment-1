# Question : Write a Ruby program to remove all white space within a string.
# get input from user
puts "Enter a string"
str = gets.chomp

# remove  white space with delete function
dlStr = str.delete(" ")

# remove whitespaced with gsub
gsStr = str.gsub(/\s+/,"")

puts "With delete #{dlStr}"
puts "With gsub #{gsStr}"
