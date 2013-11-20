/* 
 * Jamoma DSP 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTLowpassOnePole.h"

#define thisTTClass			TTLowpassOnePole
#define thisTTClassName		"lowpass.1"
#define thisTTClassTags		"dspFilterLib, audio, processor, filter, lowpass"


extern "C" void TTLowpassOnePole::registerClass()
{
	TTClassRegister(TT(thisTTClassName), thisTTClassTags, TTLowpassOnePole::instantiate);
}


TTObjectBasePtr TTLowpassOnePole::instantiate(TTSymbol name, TTValue arguments)
{
	return new TTLowpassOnePole(arguments);
}


TTLowpassOnePole::TTLowpassOnePole(const TTValue& arguments):
	TTOnePole(arguments)
{
	;
}


TTLowpassOnePole::~TTLowpassOnePole()
{
	;
}
