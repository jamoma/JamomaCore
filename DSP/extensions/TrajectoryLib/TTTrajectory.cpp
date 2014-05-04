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
	mPhasor("phasor"),
	mPhasorOutputSignal(1),
	mRamp("ramp"),
	mRampOutputSignal(1)

{
	extendAttribute(TT("frequency"), mPhasor.instance(), TT("frequency"));
		
	mPhasor.set("gain", TTLinearGainToDecibels(2)); // factor 2 in [dB]
	mRamp.set("mode", "sample");

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
}
