#!/usr/bin/env ruby -wKU
# encoding: utf-8

glibdir = "."
Dir.chdir glibdir
glibdir = Dir.pwd
$modular = true

projectNameParts = glibdir.split('/')
projectName = projectNameParts.last;
projectName.gsub!(/Jamoma/, "")
ENV['JAMOMAPROJECT'] = projectName
Dir.chdir "#{glibdir}/../../Core/Shared"

version = nil
version_maj = 0
version_min = 0
version_sub = 0
version_mod = ''
revision = nil

load "build.rb"

puts "done"
puts
