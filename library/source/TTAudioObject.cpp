/* 
 * Jamoma DSP Audio Object Base Class
 * Copyright 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioObject.h"
#include "TTEnvironment.h"
#include "TTUnitTest.h"


TTAudioObject::TTAudioObject(TTValue& arguments) : 
	TTObject(arguments), 
	maxNumChannels(0),
	attrMute(0), 
	inputArray(NULL),
	outputArray(NULL),
	startProcessingTime(0.0),
	accumulatedProcessingTime(0.0),
	accumulatedProcessingCalls(0.0)
{
	// Convention: 'Public' attribute names begin with a capital letter, 'Private' attribute names begin with a lower case letter
	registerAttribute(TT("maxNumChannels"), kTypeUInt8,		&maxNumChannels,	(TTSetterMethod)&TTAudioObject::setMaxNumChannels);
	registerAttribute(kTTSym_sampleRate,	kTypeUInt32,	&sr,				(TTSetterMethod)&TTAudioObject::setSr);
	registerAttribute(TT("bypass"),			kTypeBoolean,	&attrBypass,		(TTSetterMethod)&TTAudioObject::setBypass);
	registerAttribute(TT("mute"),			kTypeBoolean,	&attrMute,			(TTSetterMethod)&TTAudioObject::setMute);
	
	registerMessage(TT("calculate"), (TTMethod)&TTAudioObject::calculateMessage);
	registerMessage(TT("test"), TTMethod(&TTObject::test));
	registerMessage(TT("resetBenchmarking"), (TTMethod)&TTAudioObject::resetBenchmarking, kTTMessagePassNone);
	registerMessage(TT("getProcessingBenchmark"), (TTMethod)&TTAudioObject::getProcessingBenchmark);
	
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&inputArray, 2);
	TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&outputArray, 2);

	// Set Defaults...
		
	setAttributeValue(kTTSym_sampleRate,	(unsigned int)ttEnvironment->mSampleRate);
	setProcess(&TTAudioObject::bypassProcess);
    setCalculate(&TTAudioObject::defaultCalculateMethod);
	setAttributeValue(TT("bypass"),			kTTBoolNo);	
}


TTAudioObject::~TTAudioObject()
{
	TTObjectRelease((TTObjectPtr*)&inputArray);
	TTObjectRelease((TTObjectPtr*)&outputArray);
}


TTErr TTAudioObject::setMaxNumChannels(const TTValue& newValue)
{
	if (TTUInt16(newValue) != maxNumChannels) {
		TTValue	oldMaxNumChannels = maxNumChannels;
		
		maxNumChannels = newValue;
		sendMessage(TT("updateMaxNumChannels"), oldMaxNumChannels, kTTValNONE);
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setSr(const TTValue& newValue)
{
	TTValue oldSampleRate(sr);
	
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.001;
	sendMessage(TT("updateSampleRate"), oldSampleRate, kTTValNONE);
	return kTTErrNone;
}


TTErr TTAudioObject::bypassProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


TTErr TTAudioObject::bypassCalculate(const TTFloat64& x, TTFloat64& y, TTPtr data)
{
	y = x;
	return kTTErrNone;
}



TTErr TTAudioObject::muteProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	for (TTUInt16 i=0; i<inputs->numAudioSignals; i++)
		(inputs->getSignal(i)).clear();
	for (TTUInt16 i=0; i<outputs->numAudioSignals; i++)
		(outputs->getSignal(i)).clear();
	return kTTErrNone;
}



TTErr TTAudioObject::defaultCalculateMethod(const TTFloat64& x, TTFloat64& y, TTPtr data)
{
	TTAudioSignalPtr	in;
	TTAudioSignalPtr	out;
	TTErr				err;
	
	TTObjectInstantiate(kTTSym_audiosignal, &in, kTTVal1);
	TTObjectInstantiate(kTTSym_audiosignal, &out, kTTVal1);
	
	in->allocWithVectorSize(1);
	out->allocWithVectorSize(1);
	
	in->mSampleVectors[0][0] = x;
	err = process(in, out);
	y = out->mSampleVectors[0][0];
	
	TTObjectRelease(&in);
	TTObjectRelease(&out);

	return err;
}


TTErr TTAudioObject::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	if (!calculateMethod)
		calculateMethod = &TTAudioObject::defaultCalculateMethod;
	
	if (!attrBypass) {
		currentProcessMethod = processMethod;
		currentCalculateMethod = calculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setCalculate(TTCalculateMethod newCalculateMethod)
{
	calculateMethod = newCalculateMethod;
	if (!attrBypass)
		currentCalculateMethod = calculateMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::setBypass(const TTValue& value)
{
	attrBypass = value;
	if (attrBypass) {
		currentProcessMethod = &TTAudioObject::bypassProcess;
		currentCalculateMethod = &TTAudioObject::bypassCalculate;
	}
	else if (attrMute) {
		currentProcessMethod = &TTAudioObject::muteProcess;
	}
	else {
		currentProcessMethod = processMethod;
		if (calculateMethod)
			currentCalculateMethod = calculateMethod;
		else
			currentCalculateMethod = &TTAudioObject::defaultCalculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setMute(const TTValue& value)
{
	attrMute = value;
	if (attrBypass) {
		currentProcessMethod = &TTAudioObject::bypassProcess;
	}
	else if (attrMute) {
		currentProcessMethod = &TTAudioObject::muteProcess;
	}
	else {
		currentProcessMethod = processMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::calculateMessage(TTValueConstRef input, TTValue& output)
{
	TTFloat64	x = input;
	TTFloat64	y;
	TTErr		err;
	
	err = calculate(x, y);
	output = y;
	return err;
}


TTErr TTAudioObject::calculate(const TTFloat64& x, TTFloat64& y)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		err = (this->*currentCalculateMethod)(x, y, NULL);
		unlock();
	}
	return err;
}


TTErr TTAudioObject::calculate(const TTValue& x, TTValue& y)
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
		size = x.getSize();
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
TTErr TTAudioObject::calculateProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


TTErr TTAudioObject::process(TTAudioSignal& in, TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		inputArray->numAudioSignals = 1;
		inputArray->setSignal(0, &in);
		outputArray->numAudioSignals = 1;
		outputArray->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(inputArray, outputArray);
		else {
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(inputArray, outputArray);
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
			}
		unlock();
	}
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		inputArray->numAudioSignals = 0;
		outputArray->numAudioSignals = 1;
		outputArray->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(inputArray, outputArray);
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(inputArray, outputArray);
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		inputArray->numAudioSignals = 2;
		inputArray->setSignal(0, &in1);
		inputArray->setSignal(1, &in2);
		outputArray->numAudioSignals = 2;
		outputArray->setSignal(0, &out1);
		outputArray->setSignal(1, &out2);
		out1.setSampleRate(sr);
		out2.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(inputArray, outputArray);
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(inputArray, outputArray);
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out)
{
	TTErr	err = kTTErrGeneric;
	
	if (valid) {
		lock();
		inputArray->numAudioSignals = 2;
		inputArray->setSignal(0, &in1);
		inputArray->setSignal(1, &in2);
		outputArray->numAudioSignals = 1;
		outputArray->setSignal(0, &out);
		out.setSampleRate(sr);
		if (!ttEnvironment->mBenchmarking)
			err = (this->*currentProcessMethod)(inputArray, outputArray);
		else{
			startProcessingTime = TTGetTimeInMicroseconds();
			err = (this->*currentProcessMethod)(inputArray, outputArray);
			accumulatedProcessingTime += (TTGetTimeInMicroseconds() - startProcessingTime);
			accumulatedProcessingCalls++;
		}
		unlock();
	}
	return err;
}


TTErr TTAudioObject::process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
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


TTErr TTAudioObject::resetBenchmarking()
{
	accumulatedProcessingTime = 0.0;
	startProcessingTime = 0.0;
	accumulatedProcessingCalls = 0.0;
	return kTTErrNone;
}


TTErr TTAudioObject::getProcessingBenchmark(TTValueConstRef, TTValueRef v)
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
TTFloat64 TTAudioObject::hertzToRadians(const TTFloat64 hz)			// NOTE: Be sure to set the sr before calling this function
{
	return(hz * kTTTwoPi / sr);
}

// radians-to-hz conversion
TTFloat64 TTAudioObject::radiansToHertz(const TTFloat64 radians)	// NOTE: Be sure to set the sr before calling this function
{
	return(radians * sr / kTTTwoPi);
}

// degrees-to-radians conversion
TTFloat64 TTAudioObject::degreesToRadians(const TTFloat64 degrees)
{
	//return((degrees * kTTPi) / 180.);
	return (degrees * kTTDegreesToRadians);
}

// radians-to-degrees conversion
TTFloat64 TTAudioObject::radiansToDegrees(const TTFloat64 radians)
{
	//return((radians * 180.) / kTTPi);	
	return (radians * kTTRadiansToDegrees);
} 


// Decay Time (seconds) to feedback coefficient conversion
TTFloat64 TTAudioObject::decayToFeedback(const TTFloat64 decay_time, TTFloat64 delay)
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
TTFloat64 TTAudioObject::feedbackToDecay(const TTFloat64 feedback, const TTFloat64 delay)
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


// ************* DECIBEL CONVERSIONS **************

// Amplitude to decibels
TTFloat64 TTAudioObject::linearToDb(const TTFloat64 value)
{
	if (value >= 0) 
		return(20. * (log10(value)));
	else
	 	return 0;
}

// Decibels to amplitude
TTFloat64 TTAudioObject::dbToLinear(TTFloat64 value)
{
	return(pow(10., (value / 20.)));
}


TTFloat64 TTAudioObject::midiToLinearGain(TTFloat64 value)
{
	return pow(value * 0.01, kTTGainMidiPower);
}

TTFloat64 TTAudioObject::linearGainToMidi(TTFloat64 value)
{
	return 100.0 * pow(value, kTTGainMidiPowerInv);
}


// Deviate
TTFloat64 TTAudioObject::deviate(TTFloat64 value)
{   //TODO use Mersedian Twister for rand-generatior
	value += (2.0 * (TTFloat32(rand()) / TTFloat32(RAND_MAX))) - 1.0;	// randomize input with +1 to -1 ms
	value = value * 0.001 * sr;											// convert from ms to samples
	value = (TTFloat32)prime(TTUInt32(value));							// find the nearest prime number (in samples)
	value = (value / sr) * 1000.0;										// convert back to ms
	
	return value;
}

// Prime
TTUInt32 TTAudioObject::prime(TTUInt32 value)
{
	long	candidate, last, i, isPrime;

   	if (value < 2)
  		candidate = 2;
	else if (value == 2)
		candidate = 3;
	else {
		candidate = value;
		if (candidate % 2 == 0)								// Test only odd numbers
			candidate--;
		do{
			isPrime = true;									// Assume glorious success
			candidate += 2;									// Bump to the next number to test
			last = TTUInt32(sqrt((TTFloat32)candidate));  	// We'll check to see if candidate has any factors, from 2 to last
			for (i=3; (i <= last) && isPrime; i+=2) {		// Loop through odd numbers only
				if ((candidate % i) == 0)
				isPrime = false;
			}
		} 
		while (!isPrime);
	}
	return candidate;
}

