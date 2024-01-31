# Q : Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, just sum up the elements that exist, returning 0 if the length of the array is 0.

# define a fn to take array input
def array_input()
  puts "Enter array size"
  size = gets.chomp.to_i #get array size from user
  arr = [] #initialize empty array
  # started a for loop to take user input
  for i in 1..size
    print "Element #{i}: "
    element = gets.chomp
    arr.push(element)
  end
  return arr
end

# define a fn to return sum of 1st 2 items
def sum_first_two(arr)
  sum = 0

  if arr.count == 0
    return 0
  elsif arr.count == 1
    return arr[0]
  else
    # getting sum with for loop
    for i in 0..(arr.count)
      sum = arr[0].to_i + arr[1].to_i
      return sum
    end
  end

end

arr = array_input()
puts sum_first_two(arr)
