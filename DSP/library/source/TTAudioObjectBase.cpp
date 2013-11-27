/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief #TTAudioObjectBase is the Jamoma DSP Audio Object Base Class
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTAudioObjectBase.h"
#include "TTEnvironment.h"
#include "TTUnitTest.h"

#define thisTTClass TTAudioObjectBase

TTAudioObjectBase::TTAudioObjectBase(const TTValue& arguments) :
	TTObjectBase(arguments), 
	mMaxNumChannels(0),
	attrMute(0), 
	inputArray(kTTSym_audiosignalarray,2),
	outputArray(kTTSym_audiosignalarray,2),
	startProcessingTime(0.0),
	accumulatedProcessingTime(0.0),
	accumulatedProcessingCalls(0.0)
{
	// Convention: 'Public' attribute names begin with a capital letter, 'Private' attribute names begin with a lower case letter
//	registerAttribute("maxNumChannels",		kTypeUInt8,		&maxNumChannels,	(TTSetterMethod)&TTAudioObjectBase::setMaxNumChannels);
	addAttributeWithSetter(MaxNumChannels,	kTypeUInt16);
	addAttributeProperty(MaxNumChannels,	defaultValue,	1);
	
	registerAttribute(kTTSym_sampleRate,	kTypeUInt32,	&sr,				(TTSetterMethod)&TTAudioObjectBase::setSr);
	registerAttribute("bypass",				kTypeBoolean,	&attrBypass,		(TTSetterMethod)&TTAudioObjectBase::setBypass);
	registerAttribute("mute",				kTypeBoolean,	&attrMute,			(TTSetterMethod)&TTAudioObjectBase::setMute);
	
	registerMessage("test",						(TTMethod)&TTAudioObjectBase::test);
	registerMessage("calculate",				(TTMethod)&TTAudioObjectBase::calculateMessage);
	registerMessage("resetBenchmarking",		(TTMethod)&TTAudioObjectBase::resetBenchmarking, kTTMessagePassNone);
	registerMessage("getProcessingBenchmark",	(TTMethod)&TTAudioObjectBase::getProcessingBenchmark);
	
	// Set Defaults...
		
	setAttributeValue(kTTSym_sampleRate, ttEnvironment->mSampleRate);
	setProcess(&TTAudioObjectBase::bypassProcess);
    setCalculate(&TTAudioObjectBase::defaultCalculateMethod);
	setAttributeValue("bypass",			NO);
}

#undef thisTTClass


TTAudioObjectBase::~TTAudioObjectBase()
{
	;
}


TTErr TTAudioObjectBase::setMaxNumChannels(const TTValue& newValue)
{
	TTUInt16 newNumChannels = newValue;

	if (newNumChannels < 1)
		newNumChannels = 1;

	if (newNumChannels != mMaxNumChannels) {
		TTValue	oldMaxNumChannels = mMaxNumChannels;
		
		mMaxNumChannels = newNumChannels;
		sendMessage("updateMaxNumChannels", oldMaxNumChannels, kTTValNONE);
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::setSr(const TTValue& newValue)
{
	TTValue oldSampleRate(sr);
	
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.001;
	sendMessage("updateSampleRate", oldSampleRate, kTTValNONE);
	return kTTErrNone;
}


TTErr TTAudioObjectBase::bypassProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	for (TTUInt16 i=0; i<outputs->numAudioSignals; i++) {
		TTAudioSignal& out = outputs->getSignal(i);

		if (i<inputs->numAudioSignals) {
			TTAudioSignal& in = inputs->getSignal(i);
			TTAudioSignal::copy(in, out);
		}
		else
			out.clear();
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::bypassCalculate(const TTFloat64& x, TTFloat64& y, TTPtr data)
{
	y = x;
	return kTTErrNone;
}



TTErr TTAudioObjectBase::muteProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	for (TTUInt16 i=0; i<inputs->numAudioSignals; i++)
		(inputs->getSignal(i)).clear();
	for (TTUInt16 i=0; i<outputs->numAudioSignals; i++)
		(outputs->getSignal(i)).clear();
	return kTTErrNone;
}



TTErr TTAudioObjectBase::defaultCalculateMethod(const TTFloat64& x, TTFloat64& y, TTPtr data)
{
	TTAudioSignalPtr	in;
	TTAudioSignalPtr	out;
	TTErr				err;
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &in, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &out, 1);
	
	in->allocWithVectorSize(1);
	out->allocWithVectorSize(1);
	
	in->mSampleVectors[0][0] = x;
	err = process(in, out);
	y = out->mSampleVectors[0][0];
	
	TTObjectBaseRelease(&in);
	TTObjectBaseRelease(&out);

	return err;
}


TTErr TTAudioObjectBase::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	if (!calculateMethod)
		calculateMethod = &TTAudioObjectBase::defaultCalculateMethod;
	
	if (!attrBypass) {
		currentProcessMethod = processMethod;
		currentCalculateMethod = calculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::setCalculate(TTCalculateMethod newCalculateMethod)
{
	calculateMethod = newCalculateMethod;
	if (!attrBypass)
		currentCalculateMethod = calculateMethod;
	return kTTErrNone;
}


TTErr TTAudioObjectBase::setBypass(const TTValue& value)
{
	attrBypass = value;
	if (attrBypass) {
		currentProcessMethod = &TTAudioObjectBase::bypassProcess;
		currentCalculateMethod = &TTAudioObjectBase::bypassCalculate;
	}
	else if (attrMute) {
		currentProcessMethod = &TTAudioObjectBase::muteProcess;
	}
	else {
		currentProcessMethod = processMethod;
		if (calculateMethod)
			currentCalculateMethod = calculateMethod;
		else
			currentCalculateMethod = &TTAudioObjectBase::defaultCalculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::setMute(const TTValue& value)
{
	attrMute = value;
	if (attrBypass) {
		currentProcessMethod = &TTAudioObjectBase::bypassProcess;
	}
	else if (attrMute) {
		currentProcessMethod = &TTAudioObjectBase::muteProcess;
	}
	else {
		currentProcessMethod = processMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::calculateMessage(TTValueConstRef input, TTValue& output)
{
	TTFloat64	x = input;
	TTFloat64	y = 0.0;
	TTErr		err;
	
	err = calculate(x, y);
	output = y;
	return err;
}


TTErr TTAudioObjectBase::calculate(const TTFloat64& x, TTFloat64& y)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		err = (this->*currentCalculateMethod)(x, y, NULL);
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::calculate(const TTValue& x, TTValue& y)
{
	TTErr	err = kTTErrGeneric;

	if (valid) {
		TTFloat64	in;
		TTFloat64	out;
		TTUInt32	size;
		
		lock();
		
		// at the moment we are iterating through the values using the same call to the object
		// however, if the calculation involves the history of previous input or output
		// then this will not work --
		// TODO: there needs to be a way to request a calculation of a list on the object if it defines such a method

		y.clear();
		size = x.size();
		for (TTUInt32 i=0; i<size; i++) {
			x.get(i, in);
			err = (this->*currentCalculateMethod)(in, out, NULL);
			y.append(out);
		}
		unlock();
	}
	return err;
}


// Note that we can implement this function here like this, but unforunately, due to the dynamic binding
// it can't inline the calculate method, and thus it we lose all of the benefits of block processing.
// Therefore, we have a version of this in macro form that can be used.
TTErr TTAudioObjectBase::calculateProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTPtrSizedInt	channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--) {
			calculate(*inSample, *outSample);
			outSample++;
			inSample++;
		}
	}
	return kTTErrNone;
}


TTErr TTAudioObjectBase::process(TTAudioSignal& in, TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		TTAudioSignalArrayPtr(inputArray.instance())->numAudioSignals = 1;
		TTAudioSignalArrayPtr(inputArray.instance())->setSignal(0, &in);
		TTAudioSignalArrayPtr(outputArray.instance())->numAudioSignals = 1;
		TTAudioSignalArrayPtr(outputArray.instance())->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
		else {
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
			}
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::process(TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		TTAudioSignalArrayPtr(inputArray.instance())->numAudioSignals = 0;
		TTAudioSignalArrayPtr(outputArray.instance())->numAudioSignals = 1;
		TTAudioSignalArrayPtr(outputArray.instance())->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		TTAudioSignalArrayPtr(inputArray.instance())->numAudioSignals = 2;
		TTAudioSignalArrayPtr(inputArray.instance())->setSignal(0, &in1);
		TTAudioSignalArrayPtr(inputArray.instance())->setSignal(1, &in2);
		TTAudioSignalArrayPtr(outputArray.instance())->numAudioSignals = 2;
		TTAudioSignalArrayPtr(outputArray.instance())->setSignal(0, &out1);
		TTAudioSignalArrayPtr(outputArray.instance())->setSignal(1, &out2);
		out1.setSampleRate(sr);
		out2.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		TTAudioSignalArrayPtr(inputArray.instance())->numAudioSignals = 2;
		TTAudioSignalArrayPtr(inputArray.instance())->setSignal(0, &in1);
		TTAudioSignalArrayPtr(inputArray.instance())->setSignal(1, &in2);
		TTAudioSignalArrayPtr(outputArray.instance())->numAudioSignals = 1;
		TTAudioSignalArrayPtr(outputArray.instance())->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(TTAudioSignalArrayPtr(inputArray.instance()), TTAudioSignalArrayPtr(outputArray.instance()));
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		outputs->setAllSampleRates(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(inputs, outputs);
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(inputs, outputs);
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObjectBase::resetBenchmarking()
{
	accumulatedProcessingTime = 0.0;
	startProcessingTime = 0.0;
	accumulatedProcessingCalls = 0.0;
	return kTTErrNone;
}


TTErr TTAudioObjectBase::getProcessingBenchmark(TTValueConstRef, TTValueRef v)
{
	v = accumulatedProcessingTime / accumulatedProcessingCalls;
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark Utilities
#endif

// RADIANS CONVERSIONS: cannot make static because of access to a member data element
// hz-to-radians conversion
TTFloat64 TTAudioObjectBase::hertzToRadians(const TTFloat64 hz)			// NOTE: Be sure to set the sr before calling this function
{
	return(hz * kTTTwoPi / sr);
}

// radians-to-hz conversion
TTFloat64 TTAudioObjectBase::radiansToHertz(const TTFloat64 radians)	// NOTE: Be sure to set the sr before calling this function
{
	return(radians * sr / kTTTwoPi);
}

// degrees-to-radians conversion
TTFloat64 TTAudioObjectBase::degreesToRadians(const TTFloat64 degrees)
{
	//return((degrees * kTTPi) / 180.);
	return (degrees * kTTDegreesToRadians);
}

// radians-to-degrees conversion
TTFloat64 TTAudioObjectBase::radiansToDegrees(const TTFloat64 radians)
{
	//return((radians * 180.) / kTTPi);	
	return (radians * kTTRadiansToDegrees);
} 


// Decay Time (seconds) to feedback coefficient conversion
TTFloat64 TTAudioObjectBase::decayToFeedback(const TTFloat64 decay_time, TTFloat64 delay)
{
	TTFloat64 	fb;
		
	delay = delay * 0.001;			// convert delay from milliseconds to seconds
	if (decay_time < 0) {
		fb = delay / -decay_time;
		fb = fb * -60.;		
		fb = pow(10., (fb / 20.));	
		fb *= -1.;
	}
	else {
		fb = delay / decay_time;
		fb = fb * -60.;				
		fb = pow(10., (fb / 20.));		
	}		
	return(fb);			
}

// return the decay time based on the feedback coefficient
TTFloat64 TTAudioObjectBase::feedbackToDecay(const TTFloat64 feedback, const TTFloat64 delay)
{
	TTFloat64 	decay_time;
	
	if (feedback > 0) {
		decay_time = 20. * (log10(feedback));		
		decay_time = -60.0 / decay_time;		
		decay_time = decay_time * (delay);		
	}
	else if (feedback < 0) {
		decay_time = 20. * (log10(fabs(feedback)));		
		decay_time = -60.0 / decay_time;		
		decay_time = decay_time * (-delay);		
	}
	else
		decay_time = 0;

	return(decay_time);
}
