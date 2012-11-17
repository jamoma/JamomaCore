/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "TTGraphOutput.h"

#define thisTTClass			TTGraphOutput
#define thisTTClassName		"graph.output"
#define thisTTClassTags		"graph, output"


TT_OBJECT_CONSTRUCTOR
{
	addMessageWithArguments(dictionary);
}


TTGraphOutput::~TTGraphOutput()
{
	;
}


TTErr TTGraphOutput::dictionary(const TTValue& anInputValue, TTValue& anOutputValue)
{
	this->sendNotification(TT("dictionaryReceived"), anInputValue);
	return kTTErrNone;
}


