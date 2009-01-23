#!/bin/sh

ruby dsp.rb $1 $2
ruby multicore.rb $1 $2
ruby modular.rb $1 $2

