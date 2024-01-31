# Write a Ruby program to check whether a value exists in an array.
# Ex: InputArray = ['Ruby', 'Java', 'C', 'AWS'], Check Word = "Ruby", Result = true

# define a fn to take array input
def arrayInput()
  puts "Enter array size"
  size = gets.chomp.to_i #get array size from user

  arr = [] #initialize empty array

  #started a for loop to take user input
  for i in 1..size
    print "Element #{i}: "
    element = gets.chomp
    arr.push(element)
  end

  return arr
end

# define a fn to find element with array and target element as parameter
def isExist(arr,element)

  # check element exist or not
  if arr.include? element
    return true
  else
    return false
  end

end

arr = arrayInput() # call array input fn
puts "Enter element to find"

element = gets.chomp
puts isExist(arr,element) # call isExist fn to determine
