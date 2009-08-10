#!/bin/sh

ruby ../Modules/Foundation/build.rb $1 $2
ruby ../Modules/DSP/build.rb $1 $2
ruby ../Modules/Graphics/build.rb $1 $2
ruby ../Modules/Multicore/build.rb $1 $2
ruby ../Modules/Modular/build.rb $1 $2
