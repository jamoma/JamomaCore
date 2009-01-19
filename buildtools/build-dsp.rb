#!/usr/bin/env ruby -wKU

###################################################################
# Build Jamoma
###################################################################

# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir        # change to libdir so that requires work
require "../library/jamomalib"   # C74 build library

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

puts "Building Jamoma DSP"
puts "==================================================="
puts "  configuration: #{configuration}"
puts "  clean: #{clean}"
#puts "  debug the build script: #{debug}"
puts "  "


@build_root = "../../Modular/library/externals"
@log_root = "../logs/DSP"
@svn_root = "../../DSP"
@fail_array = Array.new
@zerolink = false



#######
## SUB ROUTINES
#######

def create_logs
  # set up log files and ensure that the build_root is there
  `mkdir -p #{@log_root}` if !FileTest.exist?(@log_root)
  @build_log = File.new("#{@log_root}/_build.log", "w")
  @build_log.write("MAX BUILD LOG: #{`date`}\n\n")
  @build_log.flush
  @error_log = File.new("#{@log_root}/_error.log", "w")
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

  Open3.popen3("nice xcodebuild -project #{projectname} -alltargets -configuration #{configuration} ZERO_LINK=\"NO\" #{"clean" if clean == true} build") do |stdin, stdout, stderr|
    if(@debug)
      puts "nice xcodebuild -project #{projectname} -alltargets -configuration #{configuration} ZERO_LINK=\"NO\" #{"clean" if clean == true} build"
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
if  win32?
	`cp #{@svn_root}/extensions/builds/*.ttdll    #{@svn_root}Jamoma/library/externals/TTBlueExtensions/`
end
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

puts ""

if("#{configuration}" == "Development")
  puts "copying Development"
  copydir("#{@svn_root}/examples/#{src_folder}/tt.balance~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.balance~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.dcblock~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.dcblock~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.degrade~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.degrade~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.filter~#{extension}",    "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.filter~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.gain~#{extension}",      "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.gain~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.limiter~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.limiter~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.overdrive~#{extension}", "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.overdrive~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.ramp~#{extension}",      "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.ramp~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.wavetable~#{extension}", "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.wavetable~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.xfade~#{extension}",     "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.xfade~#{extension}")
  copydir("#{@svn_root}/examples/#{src_folder}/tt.zerox~#{extension}",     "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.zerox~#{extension}")
else
  puts "copying Deployment"
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.balance~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.balance~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.dcblock~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.dcblock~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.degrade~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.degrade~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.filter~#{extension}",    "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.filter~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.gain~#{extension}",      "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.gain~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.limiter~#{extension}",   "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.limiter~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.overdrive~#{extension}", "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.overdrive~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.ramp~#{extension}",      "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.ramp~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.wavetable~#{extension}", "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.wavetable~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.xfade~#{extension}",     "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.xfade~#{extension}")
  copydir("#{@svn_root}../DSP/examples/#{src_folder}/tt.zerox~#{extension}",     "#{@svn_root}../Modular/library/externals/#{dst_folder}/tt.zerox~#{extension}")
end
puts ""

puts "copying help files"
copydir("#{@svn_root}/examples/MaxMSP/tt.balance~/tt.balance~.maxhelp",     "#{@svn_root}../Modular/documentation/jamoma-help/tt.balance~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.dcblock~/tt.dcblock~.maxhelp",     "#{@svn_root}../Modular/documentation/jamoma-help/tt.dcblock~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.degrade~/tt.degrade~.maxhelp",     "#{@svn_root}../Modular/documentation/jamoma-help/tt.degrade~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.filter~/tt.filter~.maxhelp",       "#{@svn_root}../Modular/documentation/jamoma-help/tt.filter~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.gain~/tt.gain~.maxhelp",         "#{@svn_root}../Modular/documentation/jamoma-help/tt.gain~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.limiter~/tt.limiter~.maxhelp",     "#{@svn_root}../Modular/documentation/jamoma-help/tt.limiter~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.overdrive~/tt.overdrive~.maxhelp", "#{@svn_root}../Modular/documentation/jamoma-help/tt.overdrive~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.ramp~/tt.ramp~.maxhelp",           "#{@svn_root}../Modular/documentation/jamoma-help/tt.ramp~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.wavetable~/tt.wavetable~.maxhelp", "#{@svn_root}../Modular/documentation/jamoma-help/tt.wavetable~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.xfade~/tt.xfade~.maxhelp",         "#{@svn_root}../Modular/documentation/jamoma-help/tt.xfade~.maxhelp")
copydir("#{@svn_root}/examples/MaxMSP/tt.zerox~/tt.zerox~.maxhelp",         "#{@svn_root}../Modular/documentation/jamoma-help/tt.zerox~.maxhelp")
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


