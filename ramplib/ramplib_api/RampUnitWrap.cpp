/* 
 * Jamoma RampUnit Glue & Wrapper
 * This glue code wraps access to a RampUnit with a C++ API
 *
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "ext.h"
#include "RampUnitWrap.h"


rampunit::rampunit(char *filename, ramplib_method_callback pf_callback, void *baton)
{			
	char 			*temppath;
	short 			path;					// pathID#
	long			outtype;				// the file type that is actually true
	char 			fullpath[512];			// path and name passed on to the plug-in loader		
	char			extended_filename[256];	// has file extension added
#ifdef MAC_VERSION
	CFBundleRef		bun = NULL;
	CFURLRef 		url = NULL;
#else // WIN_VERSION
	HANDLE			hLib = NULL;
	char			winpath[512];
#endif

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
	
	url = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, (UInt8 *)temppath, strlen(temppath), true);
	if(!url){
		error("pattr_setup: could not create URL for pattr-bundle");
		return;
	}
	
	bun = CFBundleCreate(kCFAllocatorDefault, url);
	CFRelease(url);
	if(!bun){
		error("pattr_setup: could not create BundleRef for pattr-bundle");
		return;
	}
	rampunit_method_create 	= (rampunit_method_create_type)		CFBundleGetFunctionPointerForName(bun, CFSTR("create"));
	rampunit_method_destroy	= (rampunit_method_destroy_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("destroy"));
	rampunit_method_attrset	= (rampunit_method_attrset_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("attrset"));
	rampunit_method_attrget	= (rampunit_method_attrget_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("attrget"));
	rampunit_method_go		= (rampunit_method_go_type)			CFBundleGetFunctionPointerForName(bun, CFSTR("go"));
	rampunit_method_set		= (rampunit_method_set_type)		CFBundleGetFunctionPointerForName(bun, CFSTR("set"));
	rampunit_method_stop	= (rampunit_method_stop_type)		CFBundleGetFunctionPointerForName(bun, CFSTR("stop"));
	rampunit_method_tick	= (rampunit_method_tick_type)		CFBundleGetFunctionPointerForName(bun, CFSTR("tick"));

#else // WIN_VERSION
	path_nameconform(fullpath, winpath, PATH_STYLE_NATIVE, PATH_TYPE_ABSOLUTE);
	hLib = LoadLibrary(winpath);
	if(hLib){
		rampunit_method_create 	= (rampunit_method_create_type)		GetProcAddress((HMODULE)hLib, "create");
		rampunit_method_destroy	= (rampunit_method_destroy_type)	GetProcAddress((HMODULE)hLib, "destroy");
		rampunit_method_attrset	= (rampunit_method_attrset_type)	GetProcAddress((HMODULE)hLib, "attrset");
		rampunit_method_attrget	= (rampunit_method_attrget_type)	GetProcAddress((HMODULE)hLib, "attrget");
		rampunit_method_go		= (rampunit_method_go_type)			GetProcAddress((HMODULE)hLib, "go");
		rampunit_method_set		= (rampunit_method_set_type)		GetProcAddress((HMODULE)hLib, "set");
		rampunit_method_stop	= (rampunit_method_stop_type)		GetProcAddress((HMODULE)hLib, "stop");
		rampunit_method_tick	= (rampunit_method_tick_type)		GetProcAddress((HMODULE)hLib, "tick");
	}
#endif

	if(rampunit_method_create)
		rampunit_instance = rampunit_method_create(pf_callback, baton);
	else{
		error("RampUnit creation failed!");
		rampunit_instance = NULL;
	}
}


// Destructor
rampunit::~rampunit(void)
{
	rampunit_method_destroy(rampunit_instance);
}


// Attribute Accessors
void rampunit::attrset(int selector, double value)
{
	rampunit_method_attrset(rampunit_instance, selector, value);
}


double rampunit::attrget(int selector)
{
	return rampunit_method_attrget(rampunit_instance, selector);
}


// RampUnit Methods
void rampunit::go(float value, double time)
{
	rampunit_method_go(rampunit_instance, value, time);
}


void rampunit::set(float value)
{
	rampunit_method_set(rampunit_instance, value);
}


void rampunit::stop()
{
	rampunit_method_stop(rampunit_instance);
}


void rampunit::tick()
{
	rampunit_method_tick(rampunit_instance);
}

