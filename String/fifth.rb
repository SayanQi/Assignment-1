# Question : Write a Ruby program to replace a substring from a specified string.
# define function for this pgrm
def replace_string(str, target_str, replace_str)

  # check any empty string occurred
  if str.length == 0 || target_str.length == 0 || replace_str.length == 0
    return "Null String"

  # check target string is included in str or not
  elsif str.include? target_str
    #replace strings
    return str.gsub(target_str, replace_str)

  else
    return "Target String Not Found"
  end
end

# get input from user
puts "Enter a string"
str = gets.chomp

# get string to be replaced
puts "Enter a string to be replaced"
target_str = gets.chomp

# get string to replace
puts "Enter a string to replace"
replace_str = gets.chomp

# check if target exist
puts replaceString(str, target_str, replace_str)
