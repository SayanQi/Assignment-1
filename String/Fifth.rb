# Question : Write a Ruby program to replace a substring from a specified string.
# define function for this pgrm
def replaceString (str, targetStr, replaceStr)

  # check any empty string occurred
  if str.length == 0 || targetStr.length == 0 || replaceStr.length == 0
    return "Null String"

  # check target string is included in str or not
  elsif str.include? targetStr
    #replace strings
    return str.gsub(targetStr, replaceStr)

  else
    return "Target String Not Found"
  end
end

# get input from user
puts "Enter a string"
str = gets.chomp

# get string to be replaced
puts "Enter a string to be replaced"
targetStr = gets.chomp

# get string to replace
puts "Enter a string to replace"
replaceStr = gets.chomp

# check if target exist
puts replaceString(str, targetStr, replaceStr)
