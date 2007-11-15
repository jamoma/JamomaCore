#include "ext.h"
#include "ext_pattr_bundle.h"

// Globals: function pointers
pattr_obex_init_type	pattr_obex_init = NULL;
pattr_obex_setup_type	pattr_obex_setup = NULL;
pattr_obex_notify_type	pattr_obex_notify = NULL;

pattr_obex_getb_type	pattr_obex_getb = NULL;
pattr_obex_getp_type	pattr_obex_getp = NULL;
pattr_obex_getn_type	pattr_obex_getn = NULL;

// Create function pointers for the various pattr-integration calls
long ext_pattr_setup(void)
{
	char 			filename[256];			// for storing the name of the file locally
	char 			fullpath[512];			// path and name passed on to the xml parser
	char 			*temppath;
	short 			path;					// pathID#
	long			outtype;				// the file type that is actually true
#ifdef MAC_VERSION
	CFBundleRef		bun = NULL;
	CFURLRef 		url = NULL;

	strcpy(filename, "pattr-bundle.bundle");								// Copy symbol argument to a local string
#else
	HANDLE			hLib = NULL;
	char			winpath[512];

	strcpy(filename, "pattr-bundle.dll");								// Copy symbol argument to a local string
#endif

	if(locatefile_extended(filename, &path, &outtype, NULL, -1)){	// Returns 0 if successful
		error("pattr_setup: pattr-bundle support not found");
		return 1;														// Not found
	}	
	path_topathname(path, filename, fullpath);

#ifdef MAC_VERSION
	temppath = strchr(fullpath, ':');
	temppath += 1;

	url = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, (UInt8 *)temppath, strlen(temppath), true);
	if(!url){
		error("pattr_setup: could not create URL for pattr-bundle");
		return 1;
	}
		
	bun = CFBundleCreate(kCFAllocatorDefault, url);
	CFRelease(url);
	if(!bun){
		error("pattr_setup: could not create BundleRef for pattr-bundle");
		return 1;
	}
	
	// these are necessary
	pattr_obex_init 	= (pattr_obex_init_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_init"));
	pattr_obex_setup 	= (pattr_obex_setup_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_setup"));
	pattr_obex_notify 	= (pattr_obex_notify_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_notify"));
	// these are not really important
	pattr_obex_getb 	= (pattr_obex_getb_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_getb"));
	pattr_obex_getp 	= (pattr_obex_getp_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_getp"));
	pattr_obex_getn 	= (pattr_obex_getn_type)	CFBundleGetFunctionPointerForName(bun, CFSTR("pattr_obex_getn"));
#else
	path_nameconform(fullpath, winpath, PATH_STYLE_NATIVE, PATH_TYPE_ABSOLUTE);
	hLib = LoadLibrary(winpath);
	if (hLib) {
		// these are necessary
		pattr_obex_init 	= (pattr_obex_init_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_init");
		pattr_obex_setup 	= (pattr_obex_setup_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_setup");
		pattr_obex_notify 	= (pattr_obex_notify_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_notify");
		// these are not really important
		pattr_obex_getb 	= (pattr_obex_getb_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_getb");
		pattr_obex_getp 	= (pattr_obex_getp_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_getp");
		pattr_obex_getn 	= (pattr_obex_getn_type)	GetProcAddress((HMODULE)hLib, "pattr_obex_getn");
	}
#endif	
	if(pattr_obex_init == NULL) {
		error("pattr_setup: could not create get function pointers for pattr-bundle");
		return 1;
	}
	return 0;
}
