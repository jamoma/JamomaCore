#!/bin/sh

ruby foundation.rb $1 $2
ruby dsp.rb $1 $2
ruby graphics.rb $1 $2
ruby multicore.rb $1 $2
ruby modular.rb $1 $2

