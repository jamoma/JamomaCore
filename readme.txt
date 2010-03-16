This project is the master project for the Jamoma platform.

It is intended to contain sub-projects representing the various modules of the Jamoma platform.

- Dependencies- DSP- Foundation- Graph- Graphics- Modular- Multicore- Publications- Ruby- Test- TheGitter

The Tools folder contains scripts which perform various essential tasks for the development of Jamoma.

These tools assume you have Git (http://redmine.jamoma.org/wiki/jamoma/Installing_and_setting_up_GIT) and Ruby (http://ruby.about.com/od/tutorials/a/installruby.htm) already installed and running on your computer.

--------------------------------------------------
UPDATE MODULES
--------------------------------------------------
All sources needed to build Jamoma can be updated to last version following these steps:

1) From Terminal or the cygwin window, go to "Tools" folder in the main Jamoma directory by running the following command :

'cd Jamoma/Tools'

2) Run the Ruby update.rb script using the following command:

'ruby update.rb'

3) Wait until it is done…

4) When the update process is finished, you have the latest version Jamoma repository
--------------------------------------------------


--------------------------------------------------
BUILDING THE SOURCE CODE
--------------------------------------------------
Jamoma framework can be easily compiled using a single Ruby script. To do so, please follow these steps:

1) From Terminal or the cygwin window, go to "Tools" folder in the main Jamoma directory by running the following command :

'cd Jamoma/Tools'

2) Run the Ruby "build.rb" script running the following command:

'ruby build.rb Deployment clean'

Alternatively, if you want a developer release rather than a nice, clean release version, you may do it so with the following command:

'ruby build.rb Development'

3) Assuming no error, you now have Jamoma framework compiled, installed and running. Welcome to the Jamoma development!
--------------------------------------------------


--------------------------------------------------
AUTOMATICALLY UPDATE MODULES & BUILD SOURCES
--------------------------------------------------
Both operations can be automated following these steps:

1) From Terminal or the cygwin window, go to "Tools" folder in the main Jamoma directory by running the following command :

'cd Jamoma/Tools'

2) Run the Ruby all.rb script using the following command:

'ruby all.rb master Deployment clean install'

Again, if you want a developer release rather than a nice, clean release version, you may do it so with the following command:

'ruby all.rb master Development clean'

3) Wait until it is done…

4) When the update process is finished, you have the latest version Jamoma repository
--------------------------------------------------


--------------------------------------------------
MAKING AN INSTALLER
--------------------------------------------------

The installer.rb Ruby script situated in the "Tools" folder collects all of the files it needs and then generates a standard Mac installer. You can do so by following these steps:

1) do a clean deployment build as explained above

2) all zips should be unzipped (3rd-party externs) too

3) From the Jamoma/Tools folder, run the Ruby installer.rb script using the following command from the terminal window:

'ruby installer.rb'

4) You should find the Jamoma installer in the "Jamoma/Installers" folder.
--------------------------------------------------





SETTING UP AUTOMATED TESTS

To run the automated tests, you must have rosc installed.  This is a library that implements OSC support for Ruby.
The version we are using is included in the Tools/rosc folder.  To install it:
1. cd to the Tools/rosc folder
2. sudo ruby setup.rb

Now you are ready to run automated tests, as described below.


--------------------------------------------------

RUNNING AUTOMATED TESTS

Automated tests are started by running the following script (after cd'ing into the Tools folder)
	./testrunner.rb

This relies on the 'test-components' folder in the Jamoma/library folder.
The test components need to be in that location, because they need to be in Max's searchpath.

The tests themselves are located in the 'Tests' folder at the top level of the branch, and all subfolders.
The script also looks in every folder of the Modules folder so that module tests can be kept together with the module.


--------------------------------------------------

DEBUGGING EXTERNALS ON THE MAC PLATFORM

The Max Runtime does not use the Max5 file preferences. The AddJamomaPath.maxpat is a handy utility for temporarily adding the Jamoma folder and all subfolders to the search path so that externals, components, algorithms modules and help files can be accessed in Max Runtime, e.g. when running the debugger and Max Runtime in Xcode on the OSX platform.
