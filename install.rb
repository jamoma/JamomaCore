#!/usr/bin/env ruby -wKU
# encoding: utf-8

puts "Installing Ruby Language Extensions..."

`cd library; make install`

puts
puts "=================DONE===================="
