/* 
 * Jamoma RampUnit Glue & Wrapper
 * RampUnits are implemented as Objective-C objects
 * This glue code loads the objective-c class from a plug-in and 
 * wraps access to with a C++ API
 *
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "ext.h"
#include "RampUnitWrap.h"
#import  "RampUnit.h"

#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSBundle.h>


rampunit::rampunit(char *filename, ramplib_method_callback pf_callback, void *baton)
{			
	char 			*temppath;
	short 			path;					// pathID#
	long			outtype;				// the file type that is actually true
	char 			fullpath[512];			// path and name passed on to the plug-in loader		
	char			extended_filename[256];	// has file extension added
	NSString		*bundlePath;			// but what is a bundle on Windows?
	Class			rampunitClass;
	NSBundle		*rampunitBundle;

	// 1. Find and open the RampUnit plug-in from the searchpath
	strcpy(extended_filename, filename);
#ifdef MAC_VERSION
	strcat(extended_filename, ".rampunit");
#else // WIN_VERSION
	strcat(extended_filename, ".rampdll");
#endif
	if(locatefile_extended(extended_filename, &path, &outtype, NULL, 0)){	// Returns 0 if successful
		error("rampunit: ramp unit not found");
		return;														// Not found
	}	
	path_topathname(path, extended_filename, fullpath);
#ifdef MAC_VERSION
	temppath = strchr(fullpath, ':');
	temppath += 1;
#else // WIN_VERSION
	temppath = fullpath;
#endif
	bundlePath = [NSString stringWithCString: temppath];

	// 2. Load the objective-c class out of the plug-in file
	rampunitBundle = [NSBundle bundleWithPath:bundlePath];
	if(rampunitClass = [rampunitBundle principalClass]){
		rampunitInstance = [rampunitClass alloc];
		[(id)rampunitInstance initWithCallback:pf_callback baton:baton];
	}
	else
		rampunitInstance = nil;
}


// Destructor
rampunit::~rampunit(void)
{
	[(id)rampunitInstance release];
}


// Attribute Accessors
void rampunit::attrset(int selector, double value)
{
	[(id)rampunitInstance attrset :selector :value];
}

double rampunit::attrget(int selector)
{
	return [(id)rampunitInstance attrget :selector];
}


// RampUnit Methods
void rampunit::go(float value, double time)
{
	[(id)rampunitInstance go :value :time];
}


void rampunit::set(float value)
{
	[(id)rampunitInstance set :value];
}


void rampunit::stop()
{
	[(id)rampunitInstance stop];
}


void rampunit::tick()
{
	[(id)rampunitInstance tick];
}

