#!/usr/bin/env ruby -wKU

require 'Jamoma'

puts "start"
puts


f = TTObject.new("lowpass")


for i in 0..10 
    y = f.calculate(1.0)
    puts "  input: #{1.0}   --> Jamoma FunctionLib -->   output: #{y}"
    if (i==5)
      puts "  *clearing history*"
      f.send("clear")
    end
end


puts
puts "done"
