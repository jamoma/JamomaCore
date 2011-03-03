#!/usr/bin/ruby -wKU

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd

Dir.chdir "#{glibdir}/supports"
load "build.rb"
