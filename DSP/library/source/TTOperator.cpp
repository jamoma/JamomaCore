/* 
 * Jamoma DSP Operator Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOperator.h"

#define thisTTClass			TTOperator
#define thisTTClassName		"operator"
#define thisTTClassTags		"audio, processor, math"


TT_AUDIO_CONSTRUCTOR
{
	addAttributeWithSetter(Operator, kTypeSymbol);
	addAttributeWithSetter(Operand, kTypeFloat64);
	
	// Set Defaults...
	setAttributeValue(TT("operator"),	TT("+"));
	setAttributeValue(TT("operand"),	1.0);
}


TTOperator::~TTOperator()
{
	;
}


TTErr TTOperator::setOperator(const TTValue& newValue)
{
#define SWITCH_OPERATOR_METHODS(opName, opFunctionName) \
	else if (mOperator == TT( #opName )) {\
		setCalculateMethod(calculate ## opFunctionName);\
		setProcessMethod(process ## opFunctionName);\
	}
	
	mOperator = newValue;
	if (mOperator == TT("+")) {
		setCalculateMethod(calculateAdd);
		setProcessMethod(processAdd);
	}
	else if (mOperator == TT("-")) {
		setCalculateMethod(calculateSubtract);
		setProcessMethod(processSubtract);
	}
	else if (mOperator == TT("*")) {
		setCalculateMethod(calculateMultiply);
		setProcessMethod(processMultiply);
	}
	else if (mOperator == TT("/")) {
		setCalculateMethod(calculateDivide);
		setProcessMethod(processDivide);
	}
	else if (mOperator == TT("%")) {
		setCalculateMethod(calculateModulo);
		setProcessMethod(processModulo);
	}
	else if (mOperator == TT("sqrt")) {
		setCalculateMethod(calculateSqrt);
		setProcessMethod(processSqrt);
	}
	else if (mOperator == TT("abs")) {
		setCalculateMethod(calculateFabs);
		setProcessMethod(processFabs);
	}
	else if (mOperator == TT("==")) {
		setCalculateMethod(calculateEqual);
		setProcessMethod(processEqual);
	}
	else if (mOperator == TT("!=")) {
		setCalculateMethod(calculateNotEqual);
		setProcessMethod(processNotEqual);
	}
	else if (mOperator == TT(">")) {
		setCalculateMethod(calculateGreater);
		setProcessMethod(processGreater);
	}
	else if (mOperator == TT(">=")) {
		setCalculateMethod(calculateGreaterEqual);
		setProcessMethod(processGreaterEqual);
	}
	else if (mOperator == TT("<")) {
		setCalculateMethod(calculateSmaller);
		setProcessMethod(processSmaller);
	}
	else if (mOperator == TT("<=")) {
		setCalculateMethod(calculateSmallerEqual);
		setProcessMethod(processSmallerEqual);
	}
	SWITCH_OPERATOR_METHODS(acos, Acos)
	SWITCH_OPERATOR_METHODS(asin, Asin)
	SWITCH_OPERATOR_METHODS(atan, Atan)
	//SWITCH_OPERATOR_METHODS(atan2, Atan2)
	SWITCH_OPERATOR_METHODS(ceil, Ceil)
	SWITCH_OPERATOR_METHODS(cos, Cos)
	SWITCH_OPERATOR_METHODS(cosh, Cosh)
	SWITCH_OPERATOR_METHODS(exp, Exp)
	SWITCH_OPERATOR_METHODS(floor, Floor)
	SWITCH_OPERATOR_METHODS(log, Log)
	SWITCH_OPERATOR_METHODS(log10, Log10)
	SWITCH_OPERATOR_METHODS(sin, Sin)
	SWITCH_OPERATOR_METHODS(sinh, Sinh)
	SWITCH_OPERATOR_METHODS(tan, Tan)
	SWITCH_OPERATOR_METHODS(tanh, Tanh)
	else
		return kTTErrInvalidValue;
	
	return kTTErrNone;
}


TTErr TTOperator::setOperand(const TTValue& newValue)
{	
	TTInt64		i;
	TTUInt32	count;
	
	mOperand = newValue;
	mOperandIsPowerOfTwo = false;
	
	i = (TTInt64)mOperand;
	if (i - mOperand)
		mOperandIsInteger = false;
	else
		mOperandIsInteger = true;
	
	if (mOperandIsInteger) {
		for (count = 0; i != 0; count++)
			i &= i-1;
		if (count == 1)
			mOperandIsPowerOfTwo = true;		
	}
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark operands
#endif

TTErr TTOperator::calculateAdd(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x + mOperand;
	return kTTErrNone;
}

TTErr TTOperator::calculateSubtract(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x - mOperand;
	return kTTErrNone;
}

TTErr TTOperator::calculateMultiply(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x * mOperand;
	return kTTErrNone;
}

TTErr TTOperator::calculateDivide(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	y = x / mOperand;
	return kTTErrNone;
}

TTErr TTOperator::calculateModulo(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	TTUInt64 operander = (TTUInt64)mOperand;
	
	y = fmod(x, operander);	
	return kTTErrNone;
}

TTErr TTOperator::calculateSqrt(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = sqrt(x);	
	return kTTErrNone;
}


TTErr TTOperator::calculateFabs(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = fabs(x);	
	return kTTErrNone;
}



TTErr TTOperator::processAdd(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processAddSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateAdd);
	}
}

TTErr TTOperator::processAddSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();		
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ + *in2Sample++;
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ + *in2Sample++;
		}
	}
	return kTTErrNone;
}



TTErr TTOperator::processSubtract(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processSubtractSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateSubtract);
	}
}


TTErr TTOperator::processSubtractSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ - *in2Sample++;
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ - *in2Sample++;
		}
	}
	return kTTErrNone;
}



TTErr TTOperator::processMultiply(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processMultiplySignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateMultiply);
	}
}

TTErr TTOperator::processMultiplySignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ * *in2Sample++;
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ * *in2Sample++;
		}
	}
	return kTTErrNone;
}



TTErr TTOperator::processDivide(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processDivideSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateDivide);
	}
}


TTErr TTOperator::processDivideSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ / *in2Sample++;
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = *in1Sample++ / *in2Sample++;
		}
	}
	return kTTErrNone;
}



TTErr TTOperator::processEqual(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processEqualSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateEqual);
	}
}

TTErr TTOperator::calculateEqual(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y =  (x == mOperand);
	return kTTErrNone;
}

TTErr TTOperator::processEqualSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ == *in2Sample++);				
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)	
				*outSample++ = (*in1Sample++ == *in2Sample++);				
		}
	}
	return kTTErrNone;
}

TTErr TTOperator::processNotEqual(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processNotEqualSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateNotEqual);
	}
}

TTErr TTOperator::calculateNotEqual(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = (x == mOperand);
	return kTTErrNone;
}

TTErr TTOperator::processNotEqualSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ != *in2Sample++);				
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ != *in2Sample++);
		}
	}
	return kTTErrNone;
}


TTErr TTOperator::processGreaterEqual(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processGreaterEqualSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateGreaterEqual);
	}
}

TTErr TTOperator::calculateGreaterEqual(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y= (x >= mOperand);
	return kTTErrNone;
}

TTErr TTOperator::processGreaterEqualSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)				
					*outSample++ = (*in1Sample++ >= *in2Sample++);				
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)				
				*outSample++ = (*in1Sample++ >= *in2Sample++);	
		}
	}
	return kTTErrNone;
}

TTErr TTOperator::processGreater(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processGreaterSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateGreater);
	}
}

TTErr TTOperator::calculateGreater(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = (x > mOperand);
	return kTTErrNone;
}

TTErr TTOperator::processGreaterSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
					*outSample++ = (*in1Sample++ > *in2Sample++);				
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ > *in2Sample++);		
		}
	}
	return kTTErrNone;
}


TTErr TTOperator::processSmallerEqual(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processSmallerEqualSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateSmallerEqual);
	}
}

TTErr TTOperator::calculateSmallerEqual(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = (x <= mOperand);			
	return kTTErrNone;
}

TTErr TTOperator::processSmallerEqualSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
					*outSample++ = (*in1Sample++ <= *in2Sample++);				
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ <= *in2Sample++);		
		}
	}
	return kTTErrNone;
}

TTErr TTOperator::processSmaller(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processSmallerSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateSmaller);
	}
}

TTErr TTOperator::calculateSmaller(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	y = (x < mOperand);			
	return kTTErrNone;
}

TTErr TTOperator::processSmallerSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];			
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ < *in2Sample++);			
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			while (vs--)
				*outSample++ = (*in1Sample++ < *in2Sample++);	
		}
	}
	return kTTErrNone;
}


TTErr TTOperator::processModulo(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if (inputs->numAudioSignals != 1)
		return processModuloSignal(inputs, outputs);
	else {
		TT_WRAP_CALCULATE_METHOD(calculateModulo);
	}
}

TTErr TTOperator::processModuloSignal(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&		in1 = inputs->getSignal(0);
	TTAudioSignal&		in2 = inputs->getSignal(1);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs;
	TTSampleValuePtr	in1Sample;
	TTSampleValuePtr	in2Sample;
	TTSampleValuePtr	outSample;
	TTUInt16			numChannels;
	TTUInt16			channel;
	TTUInt64			temp;
	TTUInt64			intOperand;
	
	if (in2.getNumChannelsAsInt() == 1) {				// If the operand signal is one only channel, then we apply that to all channels of in1
		numChannels = in1.getNumChannelsAsInt();
		for (channel=0; channel<numChannels; channel++) {
			in2Sample = in2.mSampleVectors[0];
			in1Sample = in1.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();			
			if (mOperandIsPowerOfTwo) {
				while (vs--) {
					temp = TTUInt64(*in1Sample++);
					intOperand = TTUInt64(*in2Sample++);
					*outSample++ = TTSampleValue(temp & intOperand);
				}
			}
			else {
				while (vs--)
					*outSample++ = fmod(*in1Sample++, *in2Sample++);		
			}
		}		
	}
	else {										// Otherwise we apply channel 1 to channel 1, channel 2 to channel 2, etc.
		numChannels = TTAudioSignal::getMinChannelCount(in1, in2);
		out.setNumChannels(numChannels);
		for (channel=0; channel<numChannels; channel++) {
			in1Sample = in1.mSampleVectors[channel];
			in2Sample = in2.mSampleVectors[channel];
			outSample = out.mSampleVectors[channel];
			vs = in1.getVectorSizeAsInt();
			
			if (mOperandIsPowerOfTwo) {
				while (vs--) {
					temp = TTUInt64(*in1Sample++);
					intOperand = TTUInt64(*in2Sample++);
					*outSample++ = TTSampleValue(temp & intOperand);
				}
			}
			else {
				while (vs--)
					*outSample++ = fmod(*in1Sample++, *in2Sample++);		
			}
		}
	}
	return kTTErrNone;
}


TTErr TTOperator::processSqrt(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateSqrt);

}


TTErr TTOperator::processFabs(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateFabs);
	
}
