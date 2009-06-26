/* 
 * TTClipper
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "CosineFunction.h"
#include "LinearFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "TanhFunction.h"


extern "C" TT_EXTENSION_EXPORT TTObjectPtr instantiateFunctionUnit(TTSymbolPtr className, TTValue& arguments)
{
	if(arguments.getSize() == 0)
		arguments = 1;
	
	if(className == TT("cosine"))
		return new CosineFunction(arguments);
	else if(className == TT("linear"))
		return new LinearFunction(arguments);
	else if(className == TT("lowpass"))
		return new LowpassFunction(arguments);
	else if(className == TT("power"))
		return new PowerFunction(arguments);
	else if(className == TT("tanh"))
		return new TanhFunction(arguments);
	
	return NULL;
}


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTBlueInit();

	TTClassRegister(TT("cosine"),	"audio, processor, function",	&instantiateFunctionUnit);
	TTClassRegister(TT("linear"),	"audio, processor, function",	&instantiateFunctionUnit);
	TTClassRegister(TT("lowpass"),	"audio, processor, function",	&instantiateFunctionUnit);
	TTClassRegister(TT("power"),	"audio, processor, function",	&instantiateFunctionUnit);
	TTClassRegister(TT("tanh"),		"audio, processor, function",	&instantiateFunctionUnit);

	return kTTErrNone;
}

