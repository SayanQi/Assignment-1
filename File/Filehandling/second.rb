# Search a specific text in the file contents

def search_file(file, text)

  # do loop to iterate
  file.each_line do |line|

    if line.include?(text)
      return true
    end

  end

  return false
end

file = File.open("New.txt", "r")

puts "Enter text to find"
text = gets.chomp

if search_file(file, text)
  puts "The text was found in the file."
else
  puts "The text was not found in the file."
end
