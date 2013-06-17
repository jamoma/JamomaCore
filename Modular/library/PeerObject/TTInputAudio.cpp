/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio input component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTInputAudio.h"

#define thisTTClass			TTInputAudio
#define thisTTClassName		"Input.audio"
#define thisTTClassTags		"input"


TTObjectBasePtr TTInputAudio::instantiate (TTSymbol& name, TTValue& arguments)
{
	return new TTInputAudio(arguments);
}


extern "C" void TTInputAudio::registerClass()
{
	TTClassRegister(TTSymbol("Input.audio"), thisTTClassTags, TTInputAudio::instantiate);
}


TTInputAudio :: TTInputAudio (TTValue& arguments) :
TTInput(arguments)
{
	;
}


TTInputAudio::~TTInputAudio()
{
	;
}

