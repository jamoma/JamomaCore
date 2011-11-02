/*
 * Jamoma DataspaceLib Base Class
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __DATASPACELIB_H__
#define __DATASPACELIB_H__

//#ifdef WIN_VERSION
// #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
//#endif // WIN_VERSION

#include "TTFoundationAPI.h"

// Macros used to export classes and methods so that we can use linking in performance-critical code
#if defined( TT_PLATFORM_MAC ) || defined ( TT_PLATFORM_LINUX )
	#define TT_DATASPACE_EXPORT TTFOUNDATION_EXPORT
#else
	#ifdef TT_DATASPACE_LIB
		#define TT_DATASPACE_EXPORT __declspec(dllexport)
	#else
		#define TT_DATASPACE_EXPORT __declspec(dllimport)
	#endif
#endif


/*
// these constants are now in TTBase.h
// Constants used for trigonometric convertions:
static const double kRadiansToDegrees = 180.0 / kTTPi; 
static const double kDegreesToRadians = kTTPi / 180.0;

// This coeff is used in GainDataspace mapping MIDI to and from linear gain
// so that MIDI=100 equals 0 dB and MIDI = 127 equals +10 dB
static const double kGainMidiPower = log(pow(10.,10./20.))/log(127./100.);
static const double kGainMidiPowerInv = 1./kGainMidiPower;

// This coeff is used for some of the color convertions:
static const double inv255 = 1./255.;
*/

#endif // __DATASPACELIB_H__
