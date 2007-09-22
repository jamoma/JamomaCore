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

# jcom.forward fails to link, comment out for now

release:  
	@${MAKE} -C common release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.change release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.colorspace release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.cubic_interpolate release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.delta release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.delta2 release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.equals release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
#	@${MAKE} -C jcom.forward release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	

debug:  
	@${MAKE} -C common debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.change debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.colorspace debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.cubic_interpolate debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.delta debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.delta2 debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.equals debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
#	@${MAKE} -C jcom.forward debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug


clean:
	@echo "Making clean..."
	@${MAKE} -C common clean
	@${MAKE} -C jcom.change clean
	@${MAKE} -C jcom.colorspace clean
	@${MAKE} -C jcom.cubic_interpolate clean
	@${MAKE} -C jcom.delta clean
	@${MAKE} -C jcom.delta2 clean
	@${MAKE} -C jcom.equals clean
	@${MAKE} -C jcom.forward clean

