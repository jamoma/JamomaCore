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

#include "AUResources.r"
