# Q : Write a Ruby program to compute the sum of elements in a given array.

# define a fn to take array input
def array_input()
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

# define a fn to count sum of array
def arr_sum(arr)
  sum = 0 # initialize sum with 0

  # started iteration and add the sum from elements of arrray
  for i in 0..(arr.count)
    sum += arr[i].to_i
  end

  return sum
end

arr = array_input()
puts "sum of the array is #{arr_sum(arr)}".capitalize!
