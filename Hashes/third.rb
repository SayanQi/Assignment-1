# Q : Write a program to search for an item in the hash collection.
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

# defined a fn to find item
def find_item(hash, item)

  if hash.empty? # check is empty or not
    return "Hash is empty!"
  elsif (hash.key? item) && (hash.value? item)  # check appeared in both or not
    return "#{item} is one of the key and value"
  elsif hash.key? item # check key or not
    return "#{item} is one of the key"
  elsif hash.value? item # check value or not
    return "#{item} is one of the value"
  end

end

hash = hash_input() # called hashinput

puts "Enter item to search"
item = gets.chomp

puts findItem(hash, item) # called finditem
