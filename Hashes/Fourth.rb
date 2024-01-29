#Q : Write a program to print the inverted hash collection.
#defined a fn for taking hash input
def hashInput()
  puts "Enter Size of Hash"
  size = gets.chomp.to_i
  hash ={}
  #iterate through size to take input
  for i in 0...size
    puts "Enter key #{i+1}"
    key = gets.chomp
    puts "Enter value #{i+1}"
    value = gets.chomp
    hash[key] = value
  end
  return hash
end

#defined a fn to invert hash
def revHash(hash)
 res = hash.invert #invert key value pair
 return res
end

hash = hashInput()
puts revHash(hash)
