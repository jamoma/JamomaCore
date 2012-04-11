#!/usr/bin/env ruby -wKU
# encoding: utf-8

# Automated way to check for memory leaks while running a unit test
# TODO: could generalize this and pass the name of the unit test as an argument

puts
puts "loading and running unit test in a child process"
puts

pid = fork do
  `set MallocStackLogging 1 && ruby gain.test.rb`
end


puts
puts "getting leak report"
puts


puts `leaks #{pid}`


puts
puts "killing forked process"
puts

puts `kill #{pid}`

puts
puts "done!"
puts
