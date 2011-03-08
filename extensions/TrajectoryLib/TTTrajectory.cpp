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
	mType(NULL),
	mPhasorOutputSignals(NULL)
//	mDimension(2.0)
{   
	mPhasors[0] = NULL;
	mPhasors[1] = NULL;
	mPhasors[2] = NULL;
	for (int i=0; i<3; i++)
		TTObjectInstantiate(TT("phasor"), &mPhasors[i], kTTVal1);	
	
	extendAttribute(TT("xFrequency"), mPhasors[0], TT("frequency"));
	extendAttribute(TT("yFrequency"), mPhasors[1], TT("frequency"));
	extendAttribute(TT("zFrequency"), mPhasors[2], TT("frequency"));
	
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mPhasorOutputSignals, 3);
	
	// we should look and see if we need to call this next one, since we just specified 3 above
	mPhasorOutputSignals->setMaxNumAudioSignals(3);
	mPhasorOutputSignals->numAudioSignals = 3;
	for (int i=0; i<3; i++) {
		TTObjectPtr anAudioSignal = NULL;		
		TTObjectInstantiate(kTTSym_audiosignal, &anAudioSignal, 1);
		mPhasorOutputSignals->setSignal(i, (TTAudioSignal*)anAudioSignal);
		mPhasors[i]->setAttributeValue(TT("gain"),linearToDb(2)); // factor 2 in [dB] 
	}
	addAttributeWithSetter(A,				kTypeFloat64);
	addAttributeWithSetter(B,				kTypeFloat64);
	addAttributeWithSetter(C,				kTypeFloat64);
	addAttributeWithSetter(DeltaX,			kTypeFloat64);
	addAttributeWithSetter(DeltaY,			kTypeFloat64);
	addAttributeWithSetter(DeltaZ,			kTypeFloat64);
	
	addAttributeWithSetter(Type, kTypeSymbol);	
	addMessageWithArgument(getTypes);
	addMessage(reset);
	
	setAttributeValue(TT("type"), TT("linear.2D"));
	setAttributeValue(TT("a"),		2.0);
	setAttributeValue(TT("b"),		0.0);
	setAttributeValue(TT("c"),		0.0);
	setAttributeValue(TT("deltaX"),		kTTHalfPi);
	setAttributeValue(TT("deltaY"),		0.0);
	setAttributeValue(TT("deltaZ"),		0.0);
	setProcessMethod(processAudio);
}


// Destructor
TTTrajectory::~TTTrajectory()
{
	for (int i=0; i<3; i++)
		TTObjectRelease(&mPhasors[i]);
	TTObjectRelease((TTObjectPtr*)&mPhasorOutputSignals);
}
