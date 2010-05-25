/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTContainer.h"

#define thisTTClass			TTContainer
#define thisTTClassName		"Container"
#define thisTTClassTags		"node, container"

TT_MODULAR_CONSTRUCTOR,
mPriority(), mDescription(kTTSymEmpty) 
{
	
	TT_ASSERT("Correct number of args to create TTContainer", arguments.getSize() == 2);
	
	arguments.get(0, mPriority);
	arguments.get(1, &mDescription);
	
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeString);
}

TTContainer::~TTContainer()
{
	;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

