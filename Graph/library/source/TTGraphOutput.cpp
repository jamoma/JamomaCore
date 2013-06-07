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


