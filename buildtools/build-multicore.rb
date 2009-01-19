#!/usr/bin/env ruby -wKU

require 'open3'
require 'fileutils'
require 'pathname'
require "../library/platform"
require 'rexml/document'
include REXML


###################################################################
# Build Multicore/Lydbaer
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir        # change to libdir so that requires work


def win32?
  (Platform::OS == :unix && Platform::IMPL == :cygwin) || Platform::OS == :win32
end

require 'wininit' if win32?



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
  if(ARGV[1] != "0" || ARGV[1] != "false")
    clean = true;
  end
end

if(ARGV.length > 2)
  if(ARGV[2] != "0" || ARGV[2] != "false")
    @debug = true;
  end
end

puts "Building Jamoma Multicore for Max"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean: #{clean}"
#puts "  debug the build script: #{debug}"
puts "  "


@svn_root = Dir.pwd + "/../../Multicore"
@build_root = @svn_root + "/implementations/Max";
@fail_array = Array.new
@zerolink = false




#######
## SUB ROUTINES
#######

def create_logs
  # set up log files and ensure that the build_root is there
  `mkdir -p #{@build_root}` if !FileTest.exist?(@build_root)
  @build_log = File.new("#{@build_root}/_build.log", "w")
  @build_log.write("MAX BUILD LOG: #{`date`}\n\n")
  @build_log.flush
  @error_log = File.new("#{@build_root}/_error.log", "w")
  @error_log.write("MAX BUILD ERROR LOG: #{`date`}\n\n")
  @error_log.flush
  trap("SIGINT") { die }
end
  
def die
  close_logs
  exit 0
end

def close_logs
  @build_log.close
  @error_log.close
end

def log_build(str)
  @build_log.write(str)
  @build_log.write("\n\n")
  @build_log.flush
end

def log_error(str)
  @error_log.write(str)
  @error_log.write("\n\n")
  @error_log.flush
end

def zero_count
  @cur_total = 0
  @cur_count = 0
end

def get_count
  return @cur_total, @cur_count
end


def copydir(sourcepath, dstpath)
  out = ""
  err = ""

  puts "copy -v #{sourcepath}  -->  #{dstpath}"

  Open3.popen3("rm -rf #{dstpath}") do |stdin, stdout, stderr|
    out = stdout.read
    err = stderr.read
  end
  log_build(out)
  log_error(err)

  Open3.popen3("cp -R #{sourcepath} #{dstpath}") do |stdin, stdout, stderr|
    out = stdout.read
    err = stderr.read
  end
  log_build(out)
  log_error(err)

  return 0  
end


def build_xcode_project(projectdir, projectname, configuration, clean)
  out = ""
  err = ""

  Open3.popen3("nice xcodebuild -project #{projectname} -alltargets -configuration #{configuration} #{"clean" if clean == true} build") do |stdin, stdout, stderr|
#  out = `nice xcodebuild -project #{projectname} -alltargets -configuration #{configuration} #{"clean" if clean == true} build`
    
    if(@debug)
      puts "nice xcodebuild -project #{projectname} -alltargets -configuration #{configuration} #{"clean" if clean == true} build"
    end
    out = stdout.read
    err = stderr.read
  end

  if /BUILD SUCCEEDED/.match(out)
    @cur_count+=1
    puts "#{projectname}: BUILD SUCCEEDED"
    log_build(out)
    return 1
  else
    @fail_array.push("#{projectdir}/#{projectname}")
    puts "#{projectname}: BUILD FAILED **************************************"
    log_error(out)
    log_error(err)
  end
  return 0
end


def build_vs_project(projectdir, projectname, configuration, clean)
  out = ""
  err = ""

  Open3.popen3("nice vcbuild.exe #{"/rebuild" if clean == true} \"#{projectname}\" \"#{configuration}\"") do |stdin, stdout, stderr|
    out = stdout.read
    err = stderr.read
  end

  if /(0 error|up\-to\-date|0 erreur)/.match(out)
    @cur_count+=1
    puts "#{projectname}: BUILD SUCCEEDED"
    log_build(out)
    return 1
  else
    @fail_array.push("#{projectdir}/#{projectname}")
    puts "#{projectname}: BUILD FAILED **************************************"
    log_error(out)
    log_error(err)
  end
  return 0
end


def build_project(projectdir, projectname, configuration, clean)
  if FileTest.exist?("#{projectdir}/#{projectname}")
    @cur_total+=1
    olddir = Dir.getwd
    Dir.chdir(projectdir)
    
    if win32?
      @cur_count += build_vs_project(projectdir, projectname, configuration, clean)
    else
      @cur_count += build_xcode_project(projectdir, projectname, configuration, clean)
    end

    Dir.chdir(olddir)
  else
    puts"File Does not exist: #{projectdir}/#{projectname}"
  end
end


def find_and_build_project(projectdir, configuration, clean)

if win32?
 	rgx = /.vcproj$/
else
  	rgx = /.xcodeproj$/
end

  Dir.foreach(projectdir) do |file|
    if rgx.match(file)
        build_project(projectdir, file, configuration, clean)
    end
  end
end


def build_dir(dir, configuration, clean)
  dir = "#{@svn_root}/#{dir}"
  return if !FileTest.exist?(dir) || !FileTest.directory?(dir)

  Dir.foreach(dir) do |subf|
    next if /^\./.match(subf)
    next if /common/.match(subf)
    next if !FileTest.directory?("#{dir}/#{subf}")
    find_and_build_project("#{dir}/#{subf}", configuration, clean)
  end
end



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
	build_project("#{@svn_root}/library", "multicore.vcproj", configuration, true)
else
	build_project("#{@svn_root}/library", "multicore.xcodeproj", configuration, true)
end

ex_total, ex_count = get_count
puts ""


###################################################################
# EXTERNALS
###################################################################
puts "Building Externals for Max..."

zero_count
build_dir("implementations/Max", configuration, clean)  
ex_total, ex_count = get_count

puts "Copying help files"
#puts "cp -v \"#{@build_root}\"/*/*.maxhelp \"#{@build_root}/../Build_Mac/#{configuration}\" "
`cp -v "#{@build_root}"/*/*.maxhelp "#{@build_root}/../Build_Mac"`
puts ""



###################################################################
# FINISH UP
###################################################################

if  win32?
else
  copydir("#{@build_root}/../Build_Mac/fxlib≈.mxo",  "\"/Applications/Max5/Cycling '74/extensions/fxlib≈.mxo\"")
end

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
exit 0;


