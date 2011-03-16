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
	mPhasorOutputSignals(NULL),
	mRampOutputSignals(NULL)

{   
	mPhasors[0] = NULL;	mPhasors[1] = NULL;	mPhasors[2] = NULL;
	mRamps[0] = NULL;	mRamps[1] = NULL;	mRamps[2] = NULL;
	for (int i=0; i<3; i++){
		TTObjectInstantiate(TT("phasor"), &mPhasors[i], kTTVal1);	
		TTObjectInstantiate(TT("ramp")	, &mRamps[i],	kTTVal1);	
	}
	extendAttribute(TT("xFrequency"), mPhasors[0], TT("frequency"));
	extendAttribute(TT("yFrequency"), mPhasors[1], TT("frequency"));
	extendAttribute(TT("zFrequency"), mPhasors[2], TT("frequency"));
	
	extendAttribute(TT("xCurrentValue"), mRamps[0], TT("currentValue"));
	extendAttribute(TT("yCurrentValue"), mRamps[1], TT("currentValue"));
	extendAttribute(TT("zCurrentValue"), mRamps[2], TT("currentValue"));
	
	extendAttribute(TT("xDestinationValue"), mRamps[0], TT("destinationValue"));
	extendAttribute(TT("yDestinationValue"), mRamps[1], TT("destinationValue"));
	extendAttribute(TT("zDestinationValue"), mRamps[2], TT("destinationValue"));

	extendAttribute(TT("xRampTime"), mRamps[0], TT("rampTime"));
	extendAttribute(TT("yRampTime"), mRamps[1], TT("rampTime"));
	extendAttribute(TT("zRampTime"), mRamps[2], TT("rampTime"));
	
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mPhasorOutputSignals, 3);
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mRampOutputSignals, 3);	
	
	// we should look and see if we need to call this next one, since we just specified 3 above
	mPhasorOutputSignals->setMaxNumAudioSignals(3);
	mPhasorOutputSignals->numAudioSignals = 3;
	mRampOutputSignals->setMaxNumAudioSignals(3);
	mRampOutputSignals->numAudioSignals = 3;
	
	for (int i=0; i<3; i++) {
		TTObjectPtr anAudioSignal = NULL;		
		TTObjectInstantiate(kTTSym_audiosignal, &anAudioSignal, 1);
		mPhasorOutputSignals->setSignal(i, (TTAudioSignal*)anAudioSignal);
		mRampOutputSignals->setSignal(i, (TTAudioSignal*)anAudioSignal);
		mPhasors[i]->setAttributeValue(TT("gain"),linearToDb(2)); // factor 2 in [dB] 
		mRamps[i]->setAttributeValue(TT("mode"), TT("sample"));
	}
	addAttributeWithSetter(A,				kTypeFloat64);
	addAttributeWithSetter(B,				kTypeFloat64);
	addAttributeWithSetter(C,				kTypeFloat64);
	addAttributeWithSetter(DeltaX,			kTypeFloat64);
	addAttributeWithSetter(DeltaY,			kTypeFloat64);
	addAttributeWithSetter(DeltaZ,			kTypeFloat64);
	addAttributeWithSetter(Type,			kTypeSymbol);	
	addAttributeWithSetter(Mode,			kTypeSymbol);	// FIXME: this should be a charactestring
	
	setAttributeValue(TT("mode"),			TT("phasor"));
	setAttributeValue(TT("type"),			TT("linear.2D"));
	setAttributeValue(TT("a"),				2.0);
	setAttributeValue(TT("b"),				0.0);
	setAttributeValue(TT("c"),				0.0);
	setAttributeValue(TT("deltaX"),			kTTHalfPi);
	setAttributeValue(TT("deltaY"),			0.0);
	setAttributeValue(TT("deltaZ"),			0.0);
	
	addMessageWithArgument(getTypes);
	addMessageWithArgument(getCurrentAttributeNames);
	addUpdate(SampleRate);
	addMessage(reset);
	
	//setProcessMethod(processAudio);
}


// Destructor
TTTrajectory::~TTTrajectory()
{
	for (int i=0; i<3; i++){
		TTObjectRelease(&mPhasors[i]);
		TTObjectRelease(&mRamps[i]);
	}
	TTObjectRelease((TTObjectPtr*)&mPhasorOutputSignals);
	TTObjectRelease((TTObjectPtr*)&mRampOutputSignals);

}
