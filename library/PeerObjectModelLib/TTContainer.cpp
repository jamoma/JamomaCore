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

TT_OBJECT_CONSTRUCTOR,
mPriority(), mDescription(kTTSymEmpty)
{
	
	TT_ASSERT("Correct number of args to create TTContainer", arguments.getSize() == 2);
	
	arguments.get(0, mPriority);
	arguments.get(1, &mDescription);
	
	addAttributeWithGetterAndSetter(Priority, kTypeUInt8);
	addAttributeWithGetterAndSetter(Description, kTypeString);
}

TTContainer::~TTContainer()
{
	;
}

TTErr TTContainer::getPriority(TTValue& value)
{
	value = mPriority;
	return kTTErrNone;
}

TTErr TTContainer::setPriority(const TTValue& value)
{
	mPriority = value;
	return kTTErrNone;
}

TTErr TTContainer::getDescription(TTValue& value)
{
	value = mDescription;
	return kTTErrNone;
}

TTErr TTContainer::setDescription(const TTValue& value)
{
	mDescription = value;
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTContainerCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

