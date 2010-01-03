#!/usr/bin/env ruby -wKU

# The TTRuby extension provides access to the Jamoma Platform from within the Ruby environment
require 'TTRuby'

puts "start"
puts


def postTableFromWindowFunction functionName
  myFunction = TTRuby.new(functionName)

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
  trapFunction = TTRuby.new("trapezoid")

  puts "    Fade = #{trapFunction.get("Fade")}"

  trapFunction.set("Fade", 0.2)
  puts "    Fade = #{trapFunction.get("Fade")}"
  trapFunction.set("Fade", -0.2)
  puts "    Fade = #{trapFunction.get("Fade")}"
  trapFunction.set("Fade", 1.5)
  puts "    Fade = #{trapFunction.get("Fade")}"
  puts


puts "done"
