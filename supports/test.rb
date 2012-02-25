#!/usr/bin/env ruby -wKU
# encoding: utf-8

# encoding: utf-8# First include the functions in the jamoma lib
libdir = "."
Dir.chdir libdir             # change to libdir so that requires work
libdir = Dir.pwd
#puts "libdir: #{libdir}"
require "#{libdir}/jamomalib"

@projectName = ENV['JAMOMAPROJECT']

puts "Unit Testing Jamoma #{@projectName}"
puts "==================================================="
#puts "  version: #{version}"
#puts "  rev:     #{revision} #{'            DIRTY REVISION' if git_dirty_commits != '0'}"
puts


@log_root = "./logs"
@git_root = "../#{@projectName}/"
@test_root = "#{@git_root}Tests/"
@fail_array = Array.new



###################################################################
# CREATE LOG FILES AND RESET COUNTERS
###################################################################
create_test_logs
zero_count

###################################################################
# Work recursively through the 'Tests' folder
###################################################################

def run_tests_for_dir(path, subfolder_depth)
  Dir.foreach path do |filename|
    if filename.match(/.*\.rb/)
      out = ""
      err = ""
      str = " TEST: #{filename}"
      subfolder_depth.times do ||
        str.insert 0, "  "
      end
      puts str
      log_test "*****************************************"
      log_test "#{filename}"
      log_test "*****************************************"

      out = `ruby #{path}#{filename} 2>&1`
      log_test(out)

      # TODO: what we need to do here is look through "out" with a regular expression to find out
      # the results of the test.
      # below is how we do it when compiling Xcode projects

      if /PASS/.match(out)
       @cur_count+=1
       puts "#{filename}: TEST PASSED"
# #       log_test(out)
# #       return 1
      else
       @fail_array.push("#{path}/#{filename}")
       puts "#{filename}: TEST FAILED **************************************"
# #      log_test(out)
#        # log_error(err)
      end

      puts


    # elsif Dir.exist?("#{path}#{filename}") && filename.match(/\..*/) == nil
    elsif File.exists?("#{path}#{filename}") && File.directory?("#{path}#{filename}") && filename.match(/\..*/) == nil
      str = " FOLDER: #{path}#{filename}"
      subfolder_depth.times do ||
        str.insert 0, "  "
      end
      puts str

      run_tests_for_dir "#{path}#{filename}/", 1+subfolder_depth
    end
  end

  ex_total, ex_count = get_count

end


run_tests_for_dir @test_root, 0







###################################################################
# FINISH UP
###################################################################

puts "=================DONE===================="
puts "\nFailed tests:" if @fail_array.length > 0
@fail_array.each do |loser|
  puts loser
end

###################################################################
# CLOSE LOG FILES
###################################################################
close_test_logs
puts ""

