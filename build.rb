#!/usr/bin/env ruby -wKU
# encoding: utf-8

@glibdir = "."
Dir.chdir @glibdir
@glibdir = Dir.pwd

Dir.chdir "#{@glibdir}/supports"
load "build.rb"
 
