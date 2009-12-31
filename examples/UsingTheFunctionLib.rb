#!/usr/bin/env ruby -wKU

# The TTRuby extension provides access to the Jamoma Platform from within the Ruby environment
require 'TTRuby'


# First, we need to create an object registered with the Jamoma Foundation
# The 'exponential' object is a member of Jamoma DSP's FunctionLib
puts "start"
myFunction = TTRuby.new("exponential")


# Now we can use the object, whose reference we have in the 'myFunction' variable
for i in 0..5 
    x = i/5.0
    y = myFunction.calculate(x)
    puts "  input: #{x}   --> Jamoma FunctionLib -->   output: #{y}"
end


# Ruby's garbage collection takes care of destroying the object when it is no longer used,
# So we don't need to worry about cleanup
puts "done"
