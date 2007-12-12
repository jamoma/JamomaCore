/* 
 * Jamoma RampUnit Glue & Wrapper
 * This glue code wraps access to a RampUnit with a C++ API
 *
 * By Tim Place, Copyright � 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "ext.h"
#include "ext_obex.h"
#include "ext_hashtab.h"
#include "RampUnitWrap.h"

static t_hashtab	*rampunit_cache = NULL;		// cache of all previously loaded rampunit bundles


rampunit::rampunit(char *filename, rampunit_method_callback_type pf_callback, void *baton)
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
	
	// 0. Look for the rampunit in the cache
	if(rampunit_cache){
#ifdef MAC_VERSION
		hashtab_lookup(rampunit_cache, gensym(filename), (t_object **)&bun);
		if(bun)
#else // WIN_VERSION
		hashtab_lookup(rampunit_cache, gensym(filename), (t_object **)&hLib);
		if(hLib)
#endif
			goto fetchpointers;
	}
	else
		rampunit_cache = hashtab_new(17);

	// 1. Find and open the RampUnit plug-in from the searchpath
	strcpy(extended_filename, filename);
#ifdef MAC_VERSION
	strcat(extended_filename, ".rampunit");
#else // WIN_VERSION
	strcat(extended_filename, ".rampdll");
#endif
	if(locatefile_extended(extended_filename, &path, &outtype, NULL, 0)){	// Returns 0 if successful
		error("rampunit: ramp unit not found");
		goto out;												// Not found
	}	
	path_topathname(path, extended_filename, fullpath);
#ifdef MAC_VERSION
	temppath = strchr(fullpath, ':');
	temppath += 1;
	
	url = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, (UInt8 *)temppath, strlen(temppath), true);
	if(!url){
		error("pattr_setup: could not create URL for pattr-bundle");
		goto out;
	}
	
	bun = CFBundleCreate(kCFAllocatorDefault, url);
	CFRelease(url);
	if(!bun){
		error("pattr_setup: could not create BundleRef for pattr-bundle");
		goto out;
	}
	
	CFBundleLoadExecutable(bun);	// this makes sure that the OS doesn't close our bundle automatically 
									// we want to keep it open for the hastab/cache optimization
	hashtab_store(rampunit_cache, gensym(filename), (t_object *)bun);
	
fetchpointers:
	rampunit_method_create					= (rampunit_method_create_type)					CFBundleGetFunctionPointerForName(bun, CFSTR("create"));
	rampunit_method_destroy					= (rampunit_method_destroy_type)				CFBundleGetFunctionPointerForName(bun, CFSTR("destroy"));
	rampunit_method_attrset					= (rampunit_method_attrset_type)				CFBundleGetFunctionPointerForName(bun, CFSTR("attrset"));
	rampunit_method_attrget					= (rampunit_method_attrget_type)				CFBundleGetFunctionPointerForName(bun, CFSTR("attrget"));
	rampunit_method_setFunction				= (rampunit_method_setFunction_type)			CFBundleGetFunctionPointerForName(bun, CFSTR("setFunction"));
	rampunit_method_getFunction				= (rampunit_method_getFunction_type)			CFBundleGetFunctionPointerForName(bun, CFSTR("getFunction"));
	rampunit_method_setFunctionParameter	= (rampunit_method_setFunctionParameter_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("setFunctionParameter"));
	rampunit_method_getFunctionParameter	= (rampunit_method_getFunctionParameter_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("getFunctionParameter"));
	rampunit_method_go						= (rampunit_method_go_type)						CFBundleGetFunctionPointerForName(bun, CFSTR("go"));
	rampunit_method_set						= (rampunit_method_set_type)					CFBundleGetFunctionPointerForName(bun, CFSTR("set"));
	rampunit_method_stop					= (rampunit_method_stop_type)					CFBundleGetFunctionPointerForName(bun, CFSTR("stop"));
	rampunit_method_tick					= (rampunit_method_tick_type)					CFBundleGetFunctionPointerForName(bun, CFSTR("tick"));

#else // WIN_VERSION
	path_nameconform(fullpath, winpath, PATH_STYLE_NATIVE, PATH_TYPE_ABSOLUTE);
	hLib = LoadLibrary(winpath);
	
	hashtab_store(rampunit_cache, gensym(filename), (t_object *)hLib);	
	
	if(hLib){
fetchpointers:
		rampunit_method_create					= (rampunit_method_create_type)					GetProcAddress((HMODULE)hLib, "create");
		rampunit_method_destroy					= (rampunit_method_destroy_type)				GetProcAddress((HMODULE)hLib, "destroy");
		rampunit_method_attrset					= (rampunit_method_attrset_type)				GetProcAddress((HMODULE)hLib, "attrset");
		rampunit_method_attrget					= (rampunit_method_attrget_type)				GetProcAddress((HMODULE)hLib, "attrget");
		rampunit_method_setFunction				= (rampunit_method_setFunction_type)			GetProcAddress((HMODULE)hLib, "setFunction");
		rampunit_method_getFunction				= (rampunit_method_getFunction_type)			GetProcAddress((HMODULE)hLib, "getFunction");
		rampunit_method_setFunctionParameter	= (rampunit_method_setFunctionParameter_type)	GetProcAddress((HMODULE)hLib, "setFunctionParameter");
		rampunit_method_getFunctionParameter	= (rampunit_method_getFunctionParameter_type)	GetProcAddress((HMODULE)hLib, "getFunctionParameter");
		rampunit_method_go						= (rampunit_method_go_type)						GetProcAddress((HMODULE)hLib, "go");
		rampunit_method_set						= (rampunit_method_set_type)					GetProcAddress((HMODULE)hLib, "set");
		rampunit_method_stop					= (rampunit_method_stop_type)					GetProcAddress((HMODULE)hLib, "stop");
		rampunit_method_tick					= (rampunit_method_tick_type)					GetProcAddress((HMODULE)hLib, "tick");
	}
#endif

	if(rampunit_method_create)
		rampunit_instance = rampunit_method_create(pf_callback, baton);
	else{
out:	
		error("RampUnit creation failed!");
		rampunit_instance = NULL;
	}
}


// Destructor
rampunit::~rampunit(void)
{
	if(rampunit_instance)
		rampunit_method_destroy(rampunit_instance);
}


// Attribute Accessors
ramp_err rampunit::attrset(t_symbol *attrname, double value)
{
	ramp_err err = RAMP_ERR_GENERIC;
	
	if(rampunit_instance){
		err = rampunit_method_attrset(rampunit_instance, attrname, value);
		if(err){
			if(err == RAMP_ERR_ATTR_INVALID)
				error("invalid attr specified for this rampunit");
			else
				error("rampunit::attrset error %i", err);
		}
	}
	else
		error("bad rampunit, cannot call attrset");
	
	return err;
}


ramp_err rampunit::attrget(t_symbol *attrname, double *value)
{
	ramp_err err = RAMP_ERR_GENERIC;
	
	if(rampunit_instance){
		err = rampunit_method_attrget(rampunit_instance, attrname, value);
		if(err){
			if(err == RAMP_ERR_ATTR_INVALID)
				error("invalid attr specified for this rampunit");
			else
				error("rampunit::attrget error %i", err);
		}
	}
	else
		error("bad rampunit, cannot call attrget");
	
	return err;
}


ramp_err rampunit::setFunction(t_symbol *functionName)
{
	return rampunit_method_setFunction(rampunit_instance, functionName);
}


ramp_err rampunit::getFunction(t_symbol **functionName)
{
	return rampunit_method_getFunction(rampunit_instance, functionName);
}


ramp_err rampunit::setFunctionParameter(t_symbol *parameterName, long argc, t_atom *argv)
{
	return rampunit_method_setFunctionParameter(rampunit_instance, parameterName, argc, argv);
}


ramp_err rampunit::getFunctionParameter(t_symbol *parameterName, long *argc, t_atom **argv)
{
	return rampunit_method_getFunctionParameter(rampunit_instance, parameterName, argc, argv);
}


// RampUnit Methods
void rampunit::go(short numvalues, double *values, double time)
{
	if(rampunit_instance)
		rampunit_method_go(rampunit_instance, numvalues, values, time);
	else
		error("bad rampunit, cannot call go");
}


void rampunit::set(short numvalues, double *values)
{
	if(rampunit_instance)
		rampunit_method_set(rampunit_instance, numvalues, values);
	else
		error("bad rampunit, cannot call set");
}


void rampunit::stop()
{
	if(rampunit_instance)
		rampunit_method_stop(rampunit_instance);
	else
		error("bad rampunit, cannot call stop");
}


void rampunit::tick()
{
	if(rampunit_instance)
		rampunit_method_tick(rampunit_instance);
	else
		error("bad rampunit, cannot call tick");
}

