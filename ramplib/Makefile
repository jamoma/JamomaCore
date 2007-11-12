# These makefiles are intended to be used on windows to build the
# externals using gcc.  In order to use these makefiles you need to have
# cygwin installed with the following packages also installed: binutils, gcc,
# gcc-mingw, gcc-mingw-core, mingw-runtime, make, and sed
#
# You also need to make a symbolic link /maxmspsdk which points to the directory
# where you have the Max SDK installed.  You can do this like so:
#
# ln -s <directory where Max SDK exists> /maxmspsdk
#
# The current targets available are release, debug and clean.
# typing 'make release' will build release versions of all the externals.
#
# You can also build any one of the externals by using make and any of the
# above targets in the directory of the external you wish to build.
#


include infra/common.mk


release:  
	@echo "Making release..."
	@${MAKE} -C RampUnits/linear.queue release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C RampUnits/linear.sched release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C RampUnits/none release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release

	

debug:  
	@echo "Making debug..."
	@${MAKE} -C common debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.sum% debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug


clean:
	@echo "Making clean..."
	@${MAKE} -C RampUnits/linear.queue clean
	@${MAKE} -C RampUnits/linear.sched clean
	@${MAKE} -C RampUnits/none clean

