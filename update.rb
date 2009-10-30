#!/usr/bin/env ruby -wKU

#TODO: checkout the correct branch here, based on an arg!
puts `git checkout master`
puts `git pull`

puts `git submodule update --init`
puts `git submodule foreach git pull`
puts `git submodule foreach git checkout master`

puts `cd supports; git submodule update --init`
puts `cd supports; git submodule foreach git checkout master`
puts `cd supports; git submodule foreach git pull`
