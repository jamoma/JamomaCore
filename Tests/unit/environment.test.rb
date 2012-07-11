#!/usr/bin/env ruby

require 'Jamoma'

environment = TTObject.new "environment"              # create an access point to the TTEnvironment class
classnames = environment.send "getAllClassNames"      # query the environment to get a list of all registered classes in the system
error_code = classnames.delete_at 0                   # the first value returned is an error code, which we don't care about in this case

puts
puts "Printing all classnames..."
classnames.each do |name|
  puts "class: #{name}"
end
puts


classnames = environment.send "getClassNamesForTags", "lowpass"   # query the environment to get a list of all registered classes in the system
error_code = classnames.delete_at 0                               # the first value returned is an error code, which we don't care about in this case

puts
puts "Printing classnames for all objects that have the 'lowpass' tag..."
classnames.each do |name|
  puts "class: #{name}"
end
puts

puts
puts "Running unit tests for all objects that have the 'lowpass' tag..."
puts
classnames.each do |name|
  puts "class: #{name}"
  o = TTObject.new name
  o.send "test"
  puts
end
puts

