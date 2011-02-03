/* 
 *	Trajectory≈
 *	trajectory generator wrapper object for Jamoma
 *	Copyright © 2010 by Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTrajectory.h"

#define thisTTClass			TTTrajectory
#define thisTTClassName		"trajectory"
#define thisTTClassTags		"trajectory"


TT_AUDIO_CONSTRUCTOR,
	mActualTrajectoryObject(NULL),
	mType(NULL)
{    
	
	addAttributeWithSetter(A,				kTypeFloat64);
	addAttributeWithSetter(B,				kTypeFloat64);
	addAttributeWithSetter(C,				kTypeFloat64);
	addAttributeWithSetter(DeltaX,			kTypeFloat64);
	addAttributeWithSetter(DeltaY,			kTypeFloat64);
	addAttributeWithSetter(DeltaZ,			kTypeFloat64);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	
	addMessageWithArgument(getTypes);
//	addMessage(clear);
//	setAttributeValue(kTTSym_maxNumChannels, arguments);
	setAttributeValue(TT("type"), TT("line"));
	setProcessMethod(processAudio);
}


// Destructor
TTTrajectory::~TTTrajectory()
{
	;
}
