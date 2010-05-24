/* 
 * A Mapper Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMapper.h"

#define thisTTClass			TTMapper
#define thisTTClassName		"Mapper"
#define thisTTClassTags		"mapper"

TT_MODULAR_CONSTRUCTOR
{
	TT_ASSERT("Correct number of args to create TTMapper", arguments.getSize() == 0);
}

TTMapper::~TTMapper()
{;}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTMapperCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

