/* 
 * A Preset Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTPreset.h"

#define thisTTClass			TTPreset
#define thisTTClassName		"Preset"
#define thisTTClassTags		"preset"

TT_MODULAR_CONSTRUCTOR
{
	TT_ASSERT("Correct number of args to create TTPreset", arguments.getSize() == 0);
}

TTPreset::~TTPreset()
{;}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTPresetCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

