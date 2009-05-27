#include <AudioUnit/AudioUnit.r>

#include "BlueButterVersion.h"

// Note that resource IDs must be spaced 2 apart for the 'STR ' name and description
#define kAudioUnitResID_BlueButter				1000

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ BlueFilter~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#define RES_ID			kAudioUnitResID_BlueButter
#define COMP_TYPE		kAudioUnitType_Effect
#define COMP_SUBTYPE	BlueButter_COMP_SUBTYPE
#define COMP_MANUF		BlueButter_COMP_MANF	

#define VERSION			kBlueButterVersion
#define NAME			"Jamoma: BlueButter"
#define DESCRIPTION		"Jamoma BlueButter Filter AU Plug-in"
#define ENTRY_POINT		"BlueButterEntry"

#include "AUResources.r"
