#!/usr/bin/env ruby -wKU

# The TTRuby extension provides access to the Jamoma Platform from within the Ruby environment
require 'TTRuby'

puts "start"
puts


# First, we need to create an object registered with the Jamoma Foundation
# The 'rectangular' object is a member of Jamoma DSP's FunctionLib
myFunction = TTRuby.new("rectangular")


# Now we can use the object, whose reference we have in the 'myFunction' variable
puts "Rectangular Window Function"
for i in 0..10 
    x = i/10.0
    y = myFunction.calculate(x)
    puts "  input: #{x}   --> Jamoma WindowFunctionLib -->   output: #{y}"
end
puts

myFunction = TTRuby.new("bartlett")

puts "Bartlett Window Function"
for i in 0..10 
    x = i/10.0
    y = myFunction.calculate(x)
    puts "  input: #{x}   --> Jamoma WindowFunctionLib -->   output: #{y}"
end
puts


# We can also set an attribute of the object and then compare the results
# Setting the base to 1.0 should make it linear


#myFunction.set("base", 1.0)

#for i in 0..5 
#    x = i/5.0
#    y = myFunction.calculate(x)
#    puts "  input: #{x}   --> Jamoma WindowFunctionLib -->   output: #{y}"
#end
#puts


# Ruby's garbage collection takes care of destroying the object when it is no longer used,
# So we don't need to worry about cleanup
puts "done"

