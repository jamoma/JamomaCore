#!/usr/bin/env ruby -wKU

puts "MAIN"
puts `git pull`

puts "SUBMODULES"
puts `git submodule update --init`
puts `git all m`
puts `git all pull`

puts "SUB-SUB"
puts `git all submodule update --init`
puts `git all all m`
puts `git all all pull`

puts "SUB-SUB-SUB"
puts `git all all submodule update --init`
puts `git all all all m`
puts `git all all all pull`
