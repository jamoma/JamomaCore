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


#release: jamoma_framework_release ramplib_release
release: ramplib_release
	@echo "Making release..."
#	@${MAKE} -C common release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.change release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.colorspace release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.cubic_interpolate release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.delta release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.dataspace release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.delta2 release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.equals release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.gain~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.gang release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.hub release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.in release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.init release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.limiter~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
# [TAP] jcom.meter~ should remain commented out until Max5 is released
#	@${MAKE} -C jcom.meter~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.oscroute release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.out release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.parameter release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.pass release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.ramp release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.receive release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.remote release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.return release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.round release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.route release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.saturation~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.send release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.send~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.stats release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.sum% release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.teabox.bits~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.teabox.count~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.teabox~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.velocity release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.xfade~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.zerox~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.mkdir release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.aed2xyz release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.xyz2aed release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.map release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release
	@${MAKE} -C jcom.receive~ release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release

#	@${MAKE} -C jcom.metro release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release

	

#debug: jamoma_framework_debug ramplib_debug
debug: ramplib_debug
	@echo "Making debug..."
#	@${MAKE} -C common debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.change debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.colorspace debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.cubic_interpolate debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.delta debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.dataspace debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.delta2 debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.equals debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.gain~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.gang debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.hub debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.in debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.init debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.limiter~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
# [TAP] jcom.meter~ should remain commented out until Max5 is released
#	@${MAKE} -C jcom.meter~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.oscroute debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.out debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.parameter debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.pass debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.ramp debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.receive debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.receive~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.remote debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.return debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.round debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.route debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.saturation~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.send debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.stats debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.sum% debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.teabox.bits~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.teabox.count~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.teabox~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.velocity debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.xfade~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.zerox~ debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.mkdir debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.aed2xyz debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.xyz2aed debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug
	@${MAKE} -C jcom.map debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug

#	@${MAKE} -C jcom.metro debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug


ramplib_release:
	@${MAKE} -C ../RampLib release CFLAGS="${RELEASE_CFLAGS}" CXXFLAGS="${RELEASE_CXXFLAGS}" BUILD_TYPE=release


ramplib_debug:
	@${MAKE} -C ../RampLib debug CFLAGS="${DEBUG_CFLAGS}" CXXFLAGS="${DEBUG_CXXFLAGS}" BUILD_TYPE=debug

jamoma_framework_release:
	@${MAKE} -C ../Framework/source release

jamoma_framework_debug:
	@${MAKE} -C ../Framework/source debug


clean:
	@echo "Making clean..."
#	@${MAKE} -C common clean
	@${MAKE} -C jcom.change clean
	@${MAKE} -C jcom.colorspace clean
	@${MAKE} -C jcom.cubic_interpolate clean
	@${MAKE} -C jcom.dataspace clean
	@${MAKE} -C jcom.delta clean
	@${MAKE} -C jcom.delta2 clean
	@${MAKE} -C jcom.equals clean
	@${MAKE} -C jcom.gain~ clean
	@${MAKE} -C jcom.gang clean
	@${MAKE} -C jcom.hub clean
	@${MAKE} -C jcom.in clean
	@${MAKE} -C jcom.init clean
	@${MAKE} -C jcom.limiter~ clean
# [TAP] jcom.meter~ should remain commented out until Max5 is released
#	@${MAKE} -C jcom.meter~ clean
	@${MAKE} -C jcom.oscroute clean
	@${MAKE} -C jcom.out clean
	@${MAKE} -C jcom.parameter clean
	@${MAKE} -C jcom.pass clean
	@${MAKE} -C jcom.ramp clean
	@${MAKE} -C jcom.receive clean
	@${MAKE} -C jcom.receive~ clean
	@${MAKE} -C jcom.remote clean
	@${MAKE} -C jcom.return clean
	@${MAKE} -C jcom.round clean
	@${MAKE} -C jcom.route clean
	@${MAKE} -C jcom.saturation~ clean
	@${MAKE} -C jcom.send clean
	@${MAKE} -C jcom.send~ clean
	@${MAKE} -C jcom.stats clean
	@${MAKE} -C jcom.sum% clean
	@${MAKE} -C jcom.teabox.bits~ clean
	@${MAKE} -C jcom.teabox.count~ clean
	@${MAKE} -C jcom.teabox~ clean
	@${MAKE} -C jcom.velocity clean
	@${MAKE} -C jcom.xfade~ clean
	@${MAKE} -C jcom.zerox~ clean
	@${MAKE} -C jcom.mkdir clean
	@${MAKE} -C jcom.aed2xyz clean
	@${MAKE} -C jcom.xyz2aed clean
	@${MAKE} -C jcom.map clean

#	@${MAKE} -C jcom.metro clean

