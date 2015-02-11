#!/usr/bin/env ruby -wKU
# encoding: utf-8

puts `git submodule foreach git checkout master`
puts `git submodule foreach git pull origin master`

puts `cd supports; git submodule update --init`
puts `cd supports; git submodule foreach git checkout master`
puts `cd supports; git submodule foreach git pull origin master`
