#include <AudioUnit/AudioUnit.r>

#include "BlueFilterVersion.h"

// Note that resource IDs must be spaced 2 apart for the 'STR ' name and description
#define kAudioUnitResID_BlueFilter				1001

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ BlueFilter~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#define RES_ID			kAudioUnitResID_BlueFilter
#define COMP_TYPE		kAudioUnitType_Effect
#define COMP_SUBTYPE	BlueFilter_COMP_SUBTYPE
#define COMP_MANUF		BlueFilter_COMP_MANF	

#define VERSION			kBlueFilterVersion
#define NAME			"Jamoma: BlueFilter"
#define DESCRIPTION		"Jamoma DSP Filter AU Plug-in"
#define ENTRY_POINT		"BlueFilterEntry"




//#include "AUResources.r"

// DUE TO ERRORS AND PROBLEMS INCLUDING THE ABOVE, JUST PASTING ITS CONTENTS BELOW:

#define UseExtendedThingResource 1

#include <CoreServices/CoreServices.r>

// this is a define used to indicate that a component has no static data that would mean 
// that no more than one instance could be open at a time - never been true for AUs
#ifndef cmpThreadSafeOnMac
#define cmpThreadSafeOnMac	0x10000000
#endif

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

resource 'STR ' (RES_ID, purgeable) {
	NAME
};

resource 'STR ' (RES_ID + 1, purgeable) {
	DESCRIPTION
};

resource 'dlle' (RES_ID) {
	ENTRY_POINT
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

resource 'thng' (RES_ID, NAME) {
	COMP_TYPE,
	COMP_SUBTYPE,
	COMP_MANUF,
	0, 0, 0, 0,								//	no 68K
	'STR ',	RES_ID,
	'STR ',	RES_ID + 1,
	0,	0,			/* icon */
	VERSION,
	componentHasMultiplePlatforms | componentDoAutoVersion,
	0,
	{
#if defined(ppc_YES)
		cmpThreadSafeOnMac,
		'dlle', RES_ID, platformPowerPCNativeEntryPoint
#define NeedLeadingComma 1
#endif
#if defined(ppc64_YES)
#if defined(NeedLeadingComma)
		,
#endif
		cmpThreadSafeOnMac,
		'dlle', RES_ID, platformPowerPC64NativeEntryPoint
#define NeedLeadingComma 1
#endif
#if defined(i386_YES)
#if defined(NeedLeadingComma)
		,
#endif
		cmpThreadSafeOnMac,
		'dlle', RES_ID, platformIA32NativeEntryPoint
#define NeedLeadingComma 1
#endif
#if defined(x86_64_YES)
#if defined(NeedLeadingComma)
		,
#endif
		cmpThreadSafeOnMac,
		'dlle', RES_ID, 8
#define NeedLeadingComma 1
#endif
	}
};

#undef RES_ID
#undef COMP_TYPE
#undef COMP_SUBTYPE
#undef COMP_MANUF
#undef VERSION
#undef NAME
#undef DESCRIPTION
#undef ENTRY_POINT
#undef NeedLeadingComma

