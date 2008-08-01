#!/usr/bin/env ruby
# not using the version with warnings because rosc posts a lot of annoying warnings...
#/usr/bin/env ruby -wKU

###################################################################
# Run automated tests for Jamoma
###################################################################

require 'osc'
#require 'open3'
require 'fileutils'
require 'pathname'
#require 'rexml/document'
#include REXML


Dir.chdir ".."
@svnroot = Dir.pwd

@host = 'localhost'
@receivePort = 7474
@sendPort = 7575

@passes = 0
@failures = 0

@startTime = Time.now


puts "Jamoma Automated Test Runner"
puts "  Starting the OSC Server..."
@oscReceiver = OSC::UDPServer.new
@oscReceiver.bind @host, @receivePort
@oscSender = OSC::UDPSocket.new


###################################################################
# sub routines
###################################################################

def Kernel.is_windows?
  processor, platform, *rest = RUBY_PLATFORM.split("-")
  platform == 'mswin32'
end


def path_separator
  if Kernel.is_windows?
    "\\"
  else
    "/"
  end
end


def iteratable_directory_name?(name)
  name != "." && name != ".." && name != ".svn"
end


def valid_test_file_name?(name, suffix)
  name.chomp(suffix).length != name.length
end


def filepath_escape(pathstring)
  '"' + pathstring + '"'
end


def directory_of(pathstring)
  dir = ""
  elems = pathstring.split(path_separator)
  elems.each_index do |i|
    dir << elems[i] + path_separator unless i == elems.length - 1 
  end
  dir
end


def processAllTestFiles(directory, suffix)
  count = 0
  
  # Setup OSC Methods that we respond to from the tests we are about to run
  @testDone = 0
  @oscReceiver.add_method('/test/finished', '') do |msg|
    @testDone = 1
  end
  
  @oscReceiver.add_method('/test/result', nil) do |msg|
    if(msg.args[0] == "PASS")
      if msg.args.size == 2
        puts "    PASSED: #{msg.args[1]}"
      elsif msg.args.size == 3
        puts "    PASSED: #{msg.args[1]} #{msg.args[2]}"
      else
        puts "    PASSED: #{msg.args[1]} #{msg.args[2]} (#{msg.args[3]})"
      end
      @passes = @passes + 1
    else
      if msg.args.size == 2
        puts "    FAILED: #{msg.args[1]}     ********************"
      elsif msg.args.size == 3
        puts "    FAILED: #{msg.args[1]} #{msg.args[2]}     ********************"
      else
        puts "    FAILED: #{msg.args[1]} #{msg.args[2]} (#{msg.args[3]})    ********************"
      end
      @failures = @failures + 1
    end
  end
  
  @oscReceiver.add_method('/test/log', nil) do |msg|
    puts "    #{msg.args.to_s}"
  end
  
  
  # Now we actually go through the directories and open the test
  Dir.foreach(directory) do |x| 
    filepath = directory + path_separator + x
    if File.directory?(filepath) && iteratable_directory_name?(x)
      count = count + processAllTestFiles(filepath, suffix)
    elsif valid_test_file_name?(x, suffix)
      start_test_time = Time.now
      count = count + 1
      puts "  #{filepath}:" 

      @testDone = 0
      
      m = OSC::Message.new("/test/open #{filepath}");
      @oscSender.send(m, 0, @host, @sendPort)
 
      while @testDone == 0
        sleep 1
      end

      time_taken = Time.now - start_test_time
      puts("    (#{x} completed in #{time_taken} seconds)")
      puts("")
    end
  end
  count
end


def establishCommunication
  @pingReturned = 0

  @oscReceiver.add_method('/ping/return', '') do |msg|
    puts "    Ping successfully returned."
    puts ""
    @pingReturned = 1
    # from here we can call a test start method
  end


  Thread.new do
    @oscReceiver.serve
  end
  sleep 5

  ping = OSC::Message.new('/ping');
  while @pingReturned == 0
    puts "    Sending ping to Max."
    @oscSender.send(ping, 0, @host, @sendPort)
    sleep 1
  end
end


###################################################################
# here is where we actually run the tests
###################################################################

puts "  Copying jcom.test.manager.maxpat to the Max Startup folder"
`cp "#{@svnroot}/Tools/jcom.test.manager.maxpat" "/Applications/Max5/Cycling '74/max-startup"`

puts "  Launching Max..."
`open /Applications/Max5/MaxMSP.app/Contents/MacOS/MaxMSP`

puts "  Establishing Communication with Max..."
establishCommunication()


@totaltests = 0
@totaltests += processAllTestFiles(@svnroot+"/Tests", ".test.maxpat")
@totaltests += processAllTestFiles(@svnroot+"/Jamoma/modules", ".test.maxpat")
puts "  #{@totaltests} tests completed."


puts "  Quitting Max..."
quit = OSC::Message.new('/kill');
@oscSender.send(quit, 0, @host, @sendPort)
sleep 5

puts "  Cleaning up: removing jcom.testmanager.maxpat from the Max Startup folder"
`rm "/Applications/Max5/Cycling '74/max-startup/jcom.test.manager.maxpat"`


puts ""
puts "  RESULTS:"
puts "    assertions failed:    #{@failures}"
#puts "    unusual terminations: #{@potential_crashes}"
puts "    assertions passed:    #{@passes}"
puts "    number of files:      #{@totaltests}"
puts "    total test time:      #{Time.now - @startTime} seconds"


puts ""
exit 0
