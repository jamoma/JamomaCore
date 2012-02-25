#!/usr/bin/env ruby -wKU
# encoding: utf-8

###################################################################
# Make a Makefile for Make from a YAML project file
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir             # change to libdir so that requires work
libdir = Dir.pwd
require "#{libdir}/jamomalib"

if(ARGV.length == 0)
  puts "usage: "
  puts "makemake.rb <required:path_to_project_folder>"
  exit 0;
end

projectdir = ARGV[0]
foldername = projectdir.split("/").last
success = generate_makefile(projectdir, foldername)

puts "Makefile Successfully Generated" if success
puts "Makefile Generation FAILED" if !success
puts

