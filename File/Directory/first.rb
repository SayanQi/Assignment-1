Dir.mkdir "NewDir"
Dir.exist? "NewDir"
Dir.glob("/Assignments")
Dir.glob('Assignments/**/*.rb') do |file|
  puts file
end
