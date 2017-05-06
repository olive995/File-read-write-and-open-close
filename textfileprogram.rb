print "What is the name of the file you'd like to open? "
filename = $stdin.gets.chomp

puts "Here's your file #{filename}:"
txt = File.open(filename, "r")

puts ("'#{txt.read()}'")

puts "Would you like to close #{filename}?"
file_close = $stdin.gets.chop.upcase

if file_close == "YES"
  txt.close()
  puts "Your file has been closed."
  return exit
elsif file_close == "NO"
  puts "Your file will not be closed."
else
  puts "You have not specified whether or not you would like to close your file."
end

puts "Would you like to edit the contents of #{filename}?"
file_decide = $stdin.gets.chop.upcase
if file_decide == "YES"
  puts "What would you like to write to your file?"
  file_write = File.write(txt, $stdin.gets.chomp)

  txt = file_write

  new_file = File.open(filename, "r")
  puts "Your file has been overwritten to say:\n\n'#{new_file.read()}'"
elsif file_decide == 'NO'
  puts "Your file will not be overwritten."
else
  puts "You have specified whether or not you would like to overwrite your file. Please answer with 'yes' or 'no.'"
end
