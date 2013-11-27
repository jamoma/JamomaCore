/** @file
 *
 * @ingroup dspTrajectoryLib
 *
 * @brief A generalized Trajectory generator wrapper object for Jamoma DSP
 *
 * @details This file wraps TrajectoyLib for Max.
 *
 * @authors Nils Peters, Tim Place
 *
 * @copyright Copyright © 2009 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTTrajectory.h"

#define thisTTClass			TTTrajectory
#define thisTTClassName		"trajectory"
#define thisTTClassTags		"trajectory"


TT_AUDIO_CONSTRUCTOR,
	mActualTrajectoryObject(NULL),
	mPhasorOutputSignals(NULL),
	mRampOutputSignals(NULL)

{   
	mPhasors[0] = NULL;	//mPhasors[1] = NULL;	mPhasors[2] = NULL;
	mRamps[0] = NULL;	//mRamps[1] = NULL;	mRamps[2] = NULL;
//	for (int i=0; i<3; i++){
		TTObjectBaseInstantiate(TT("phasor"), &mPhasors[0], TTValue(1));
		TTObjectBaseInstantiate(TT("ramp")	, &mRamps[0],	TTValue(1));
//	}
	extendAttribute(TT("frequency"), mPhasors[0], TT("frequency"));
	
	TTObjectBaseInstantiate(kTTSym_audiosignalarray, (TTObjectBasePtr*)&mPhasorOutputSignals, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignalarray, (TTObjectBasePtr*)&mRampOutputSignals, 1);	
	
	// we should look and see if we need to call this next one, since we just specified 3 above
	mPhasorOutputSignals->setMaxNumAudioSignals(1);
	mPhasorOutputSignals->numAudioSignals = 1;
	mRampOutputSignals->setMaxNumAudioSignals(1);
	mRampOutputSignals->numAudioSignals = 1;
	
	//for (int i=0; i<1; i++) {
		TTObjectBasePtr anAudioSignal = NULL;		
		TTObjectBaseInstantiate(kTTSym_audiosignal, &anAudioSignal, 1);
		mPhasorOutputSignals->setSignal(0, (TTAudioSignal*)anAudioSignal);
		mRampOutputSignals->setSignal(0, (TTAudioSignal*)anAudioSignal);
		mPhasors[0]->setAttributeValue(TT("gain"), TTLinearGainToDecibels(2)); // factor 2 in [dB] 
		mRamps[0]->setAttributeValue(TT("mode"), TT("sample"));
	//}
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
	
	addMessageWithArguments(getTypes);
	addMessageWithArguments(getCurrentAttributeNames);
	addMessageWithArguments(getCurrentType);
	addMessageWithArguments(ramp);
	addUpdates(SampleRate);
	addMessage(reset);
	
	//setProcessMethod(processAudio);
}


// Destructor
TTTrajectory::~TTTrajectory()
{

	TTObjectBaseRelease(&mPhasors[0]);
	TTObjectBaseRelease(&mRamps[0]);
	
	TTObjectBaseRelease((TTObjectBasePtr*)&mPhasorOutputSignals);
	TTObjectBaseRelease((TTObjectBasePtr*)&mRampOutputSignals);

}
