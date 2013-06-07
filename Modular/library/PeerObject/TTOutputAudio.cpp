/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio output component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOutputAudio.h"

#define thisTTClass			TTOutputAudio
#define thisTTClassName		"Output.audio"
#define thisTTClassTags		"output"

TTObjectBasePtr TTOutputAudio::instantiate (TTSymbol& name, TTValue& arguments)
{
	return new TTOutputAudio(arguments);
}


extern "C" void TTOutputAudio::registerClass()
{
	TTClassRegister(TTSymbol("Output.audio"), thisTTClassTags, TTOutputAudio::instantiate);
}


TTOutputAudio::TTOutputAudio(TTValue& arguments) :
TTOutput(arguments)
{
}


TTOutputAudio::~TTOutputAudio()
{
}
