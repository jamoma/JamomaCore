// Jamoma RampUnit header file
// Required for people loading the dynamic libraries for use in projects
// On MacOS X these libraries are bundles, on Windows they are DLLs.

#include "rampunit.h"

#ifdef MAC_VERSION
// Given a full absolute pathname, load the bundle executable and setup function pointers
short ramplib_glue(t_rampunit_functions *rampunit, char *fullpath)
{
	CFStringRef path = CFStringCreateWithCString(NULL, fullpath, NULL);
	CFURLRef 	url = CFURLCreateWithString(NULL, path, NULL);
	CFBundleRef bun = CFBundleCreate(NULL, url);
	
	CFRelease(url);
	CFRelease(path);
	// the os takes care of releasing bun
	
	if(bun == NULL)
		return -2;

	// Get the function pointers
	rampunit->create 	= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_new"));
	rampunit->destroy 	= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_free"));
	rampunit->attrset 	= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_attrset"));
	rampunit->attrget 	= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_attrget"));
	rampunit->go 		= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_go"));
	rampunit->set 		= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_set"));
	rampunit->stop 		= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_stop"));
	rampunit->tick 		= CFBundleGetFunctionPointerForName(bun, CFSTR("rampunit_tick"));	
	
	if(	rampunit->new 		== NULL || 
		rampunit->free 		== NULL || 
	   	rampunit->attrset 	== NULL || 
	   	rampunit->attrget 	== NULL || 
	   	rampunit->go 		== NULL || 
	   	rampunit->set 		== NULL || 
	   	rampunit->stop 		== NULL || 
	   	rampunit->tick 		== NULL)
	{
		return -1;
	}
	
	return 0; // noErr
}


void ramplib_unglue(t_rampunit_functions *rampunit)
{
	rampunit->create	= NULL;
	rampunit->destroy 	= NULL;
	rampunit->attrset 	= NULL;
	rampunit->attrget 	= NULL;
	rampunit->go 		= NULL;   
	rampunit->set 		= NULL;
	rampunit->stop 		= NULL;   				              
	rampunit->tick 		= NULL;
}
#endif // MAC_VERSION