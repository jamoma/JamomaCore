#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir             # change to libdir so that requires work
require "support/jamomalib"


# This defines a wrapper that we use to call shell commands
def cmd(commandString)
  out = ""
  err = ""
  
  Open3.popen3(commandString) do |stdin, stdout, stderr|
    out = stdout.read
    err = stderr.read
  end
  #log_error(out)
  #log_error(err)
end




if(ARGV.length == 0)
  puts "usage: "
  puts "build.rb <required:configuration> <optional:clean>"
  exit 0;
end

configuration = ARGV[0];
if win32?
 	 if(configuration == "Development" || configuration == "Debug" )
    		configuration = "Debug"
  	else
		if(configuration == "Deployment" || configuration == "Release" )
    			configuration = "Release"
		end
 	 end
end

clean = false;
@debug = false;

if(ARGV.length > 1)
  if(ARGV[1] != "0" && ARGV[1] != "false" && ARGV[1] != false)
    clean = true;
  end
end

if(ARGV.length > 2)
  if(ARGV[2] != "0" && ARGV[2] != "false" && ARGV[2] != false)
    @debug = true;
  end
end

version = nil
revision = nil

if(ARGV.length > 3)
  version = ARGV[3]
end
if(ARGV.length > 4)
  revision = ARGV[4]
end


puts "Building Jamoma DSP"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean:   #{clean}"
#puts "  debug the build script: #{debug}"
puts "  version: #{version}"
puts "  rev:     #{revision}"
puts "  "


@log_root = "./logs"
@svn_root = "./"
@fail_array = Array.new
@zerolink = false





###################################################################
# CREATE LOG FILES AND RESET COUNTERS
###################################################################
create_logs
zero_count


###################################################################
# FRAMEWORK
###################################################################
puts "Building Frameworks..."
zero_count

if win32?
	build_project("#{@svn_root}/library", "JamomaDSP.vcproj", configuration, true)
else
	build_project("#{@svn_root}/library", "JamomaDSP.xcodeproj", configuration, true)
end

ex_total, ex_count = get_count
puts ""

puts "Building Extensions..."
zero_count
build_dir("extensions", configuration, clean)  
ex_total, ex_count = get_count
puts ""


###################################################################
# EXTERNALS
###################################################################
puts "Building Max Externals..."

zero_count
build_dir("examples/MaxMSP", configuration, clean)  
ex_total, ex_count = get_count

extension = ".mxo"
if win32?
	extension = ".mxe"
end

src_folder = "Build_Mac"
if win32?
	src_folder = "MaxMSP/builds"
end

dst_folder = "mac"
if win32?
	dst_folder = "windows"
end
 

puts "Copying maxhelps into Modular/Jamoma/Documentation/Jamoma-help"
if win32?
	`cp -v examples/MaxMSP/builds/*.mxe ../../Builds`
`cp -pv examples/MaxMSP/*/*.maxhelp ../Modular/Jamoma/documentation/jamoma-help`
else
cmd("cp -pv examples/MaxMSP/*/*.maxhelp ../Modular/Jamoma/documentation/jamoma-help ")
end
puts ""
###################################################################
# FINISH UP
###################################################################

puts "=================DONE===================="
puts "\nFailed projects:" if @fail_array.length > 0
@fail_array.each do |loser|
  puts loser
end

###################################################################
# CLOSE LOG FILES
###################################################################
close_logs
puts ""
