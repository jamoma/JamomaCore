#!/usr/bin/env ruby

@filepath = ARGV[0]
f = File.open("#{@filepath}", "r+")
str = f.read
puts "STR: #{str}"
str.gsub!(/.?Rev: (.*) .?/, '\1')
puts "STR: #{str}"
f.rewind
f.write(str)
f.close

