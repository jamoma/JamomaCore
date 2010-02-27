/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGraphObject.h"
#include "TTGraphOutput.h"

#define thisTTClass			TTGraphOutput
#define thisTTClassName		"graph.output"
#define thisTTClassTags		"graph, output"


TT_OBJECT_CONSTRUCTOR
{
	addMessageWithArgument(dictionary);
}


TTGraphOutput::~TTGraphOutput()
{
	;
}


TTErr TTGraphOutput::dictionary(const TTValue& aDictionary)
{
	TTValue v;
	
	v.set(0, TTPtr(aDictionary));
	this->sendNotification(TT("dictionaryReceived"), v);
	return kTTErrNone;
}


