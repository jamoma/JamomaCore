#!/usr/bin/env ruby -wKU
# encoding: utf-8

# The Jamoma extension provides access to the Jamoma Platform from within the Ruby environment
require 'Jamoma'

puts "start"
puts


def postTableFromWindowFunction functionName
  myFunction = TTObject.new(functionName)

  puts "#{functionName} Window Function"
  for i in 0..10 
      x = i/10.0
      y = myFunction.calculate(x)
      puts "  input: #{x}   --> Jamoma WindowFunctionLib -->   output: #{y}"
  end
  puts
end


postTableFromWindowFunction("bartlett")
postTableFromWindowFunction("hamming")
postTableFromWindowFunction("hanning")
postTableFromWindowFunction("rectangular")
postTableFromWindowFunction("welch")
postTableFromWindowFunction("trapezoid")



puts "  Testing the trapezoid clipping range: we set it out of range, which should be limited between just-above-zero and 0.5:"
  trapFunction = TTObject.new("trapezoid")

  puts "    Fade = #{trapFunction.get("fade")}"

  trapFunction.set("fade", 0.2)
  puts "    Fade = #{trapFunction.get("fade")}"
  trapFunction.set("fade", -0.2)
  puts "    Fade = #{trapFunction.get("fade")}"
  trapFunction.set("fade", 1.5)
  puts "    Fade = #{trapFunction.get("fade")}"
  puts


puts "done"
