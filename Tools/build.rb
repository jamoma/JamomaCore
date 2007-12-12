#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
# Ruby Version - notoriously based on scripts by Jeremy Bernstein
###################################################################

require 'open3'
require 'fileutils'
require 'pathname'

require 'rexml/document'
include REXML

# This finds our current directory, to generate an absolute path for the require
libdir = "."
Dir.chdir libdir        # change to libdir so that requires work

cleandefault = true #turn off for dirty-building of frameworks, should only be used for debugging


if(ARGV.length == 0)
  puts "usage: "
  puts "build.rb <required:configuration> <optional:clean>"
  exit 0;
end

configuration = ARGV[0];
if(ARGV.length > 1)
  clean = ARGV[1];
else
  clean = 0;
end

puts "Building Jamoma"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean: #{clean}"
puts "  "


@build_root = "../Jamoma/library/externals"
@svn_root = "../"
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



def find_project(projectdir, style, clean, target_prepend)
  rgx = /.xcodeproj$/
  Dir.foreach(projectdir) do |file|
    if rgx.match(file)
        targ = target_prepend == nil ? nil : "#{target_prepend}#{file.gsub(rgx, "")}"
        do_build_project(projectdir, file, targ, style, clean)
    end
  end
end
private :find_project


def do_build_project(projectdir, projectname, target, style, clean)
  if FileTest.exist?("#{projectdir}/#{projectname}")
    @cur_total+=1
    olddir = Dir.getwd
    Dir.chdir(projectdir)
    
    @cur_count += do_build_xcode_project(projectdir, projectname, target, style, clean)

    Dir.chdir(olddir)
  end
end
private :do_build_project


def build_project(projectdir, projectname, target, style, clean)
  projectdir = "#{@svn_root}/#{projectdir}"
  do_build_project(projectdir, projectname, target, style, clean)
end


def do_build_xcode_project(projectdir, projectname, target, style, clean)
  out = ""
  err = ""

  if target == nil
    targetinfo = `xcodebuild -project #{projectname} -list`
    if /\s*(\w.*?) \(Active\)/.match(targetinfo)
      activetarget = $1
    end
  else 
    activetarget = target
  end      

  Open3.popen3("nice xcodebuild -project #{projectname} -target #{activetarget} -configuration #{style} ZERO_LINK=#{@zerolink == true ? "YES" : "NO"} #{"clean" if clean == true} build") do |stdin, stdout, stderr|
    out = stdout.read
    err = stderr.read
  end

  if /BUILD SUCCEEDED/.match(out)
    @cur_count+=1
    puts "#{projectname}: BUILD SUCCEEDED (target '#{activetarget}')"
    log_build(out)
    return 1
  else
    @fail_array.push("#{projectdir}/#{projectname} : #{activetarget}")
    puts "#{projectname}: BUILD FAILED (target '#{activetarget}')"
    log_error(out)
    log_error(err)
  end
  return 0
end
private :do_build_xcode_project



def build_externs(externdir, style, clean, select, target_prepend)
  externdir = "#{@svn_root}/#{externdir}"
  return if !FileTest.exist?(externdir) || !FileTest.directory?(externdir)

  if select == nil
    Dir.foreach(externdir) do |subf|
      next if /^\./.match(subf)
      next if !FileTest.directory?("#{externdir}/#{subf}")
      find_project("#{externdir}/#{subf}", style, clean, target_prepend)
    end
  else
    select.each do |sel|
      if FileTest.exist?("#{externdir}/#{sel}") && FileTest.directory?("#{externdir}/#{sel}")
        find_project("#{externdir}/#{sel}", style, clean, target_prepend)
      end
    end
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
puts "Building Framework..."
  build_project("SourceCode/Framework","Jamoma.xcodeproj","Jamoma",configuration,true)
puts ""


###################################################################
# RAMPLIB
###################################################################
puts "Building RampLib..."

zero_count
build_externs("SourceCode/RampLib/RampUnits",configuration,clean,nil,nil)
ex_total, ex_count = get_count
puts ""


###################################################################
# EXTERNALS
###################################################################
puts "Building Externals..."

zero_count
build_externs("SourceCode/MaxObjects",configuration,clean,nil,nil)  
ex_total, ex_count = get_count
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
exit 0;


