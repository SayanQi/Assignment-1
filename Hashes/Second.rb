# q : Write a program to check whether a given key exists in the hash collection or not.
# define a fn to find existance of key
def key_exist(hash, key)

  if hash.empty? # check hash is empty or not
    return "hash is empty".capitalize!
  elsif hash.key? key # check key contains or not
    return "#{key} is a key of this Hash"
  else
    return "#{key} not found in this hash"
  end

end

# defined a fn for taking hash input
def hash_input()
  puts "Enter Size of Hash"
  size = gets.chomp.to_i
  hash ={}

  # iterate through size to take input
  for i in 0...size
    puts "Enter key #{i+1}"
    key = gets.chomp
    puts "Enter value #{i+1}"
    value = gets.chomp
    hash[key] = value
  end

  return hash
end

hash = hash_input() # called hashinput fn
puts "Enter the key to find"
key = gets.chomp
puts key_exist(hash,key) # called keyexist fn
