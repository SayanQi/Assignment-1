file_obj = File.new("file1.txt","w+")
file_obj.syswrite("This is the file 1, created at ruby")
puts file_obj.read

file_obj = File.new("file1.txt","r")
