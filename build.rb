#!/usr/bin/env ruby -wKU

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd

puts "B #{glibdir}/supports"
Dir.chdir "#{glibdir}/supports"
load "build.rb"
