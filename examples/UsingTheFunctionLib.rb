#!/usr/bin/env ruby -wKU

# The Jamoma extension provides access to the Jamoma Platform from within the Ruby environment
require 'Jamoma'

puts "start"
puts


# First, we need to create an object registered with the Jamoma Foundation
# The 'exponential' object is a member of Jamoma DSP's FunctionLib
myFunction = TTObject.new("exponential")


# Now we can use the object, whose reference we have in the 'myFunction' variable
puts "Exponential function  with default attributes:"
for i in 0..5 
    x = i/5.0
    y = myFunction.calculate(x)
    puts "  input: #{x}   --> Jamoma FunctionLib -->   output: #{y}"
end
puts


# We can also set an attribute of the object and then compare the results
# Setting the base to 1.0 should make it linear
myFunction.set("base", 1.0)

puts "Exponential function  with base attributes set to 1.0 (creates linear function):"
for i in 0..5 
    x = i/5.0
    y = myFunction.calculate(x)
    puts "  input: #{x}   --> Jamoma FunctionLib -->   output: #{y}"
end
puts


# Ruby's garbage collection takes care of destroying the object when it is no longer used,
# So we don't need to worry about cleanup
puts "done"

