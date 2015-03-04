from, to = ARGV
script = $0

puts "Copying from #{from} to #{to}"

input = File.open(from)
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exists? to}"
puts "Ready, hit RETURN to continue, CTRL-C to about."
STDIN.gets

output = File.open(to, 'w+')
output.write(indata)

puts "Alright, all done."

output.close()
input.close()
