/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTGraphObject.h"
#include "TTGraphInput.h"

#define thisTTClass			TTGraphInput
#define thisTTClassName		"graph.input"
#define thisTTClassTags		"graph, input"


TT_OBJECT_CONSTRUCTOR,
	mOwner(NULL)
{
	;
}


TTGraphInput::~TTGraphInput()
{
	;
}


TTErr TTGraphInput::setOwner(TTGraphObjectPtr newOwner)
{
	mOwner = newOwner;
	return kTTErrNone;
}


TTErr TTGraphInput::push(const TTDictionary& aDictionary)
{
	if (mOwner) {
		return mOwner->push(aDictionary);
	}
	else {
		return kTTErrGeneric;
	}
}

