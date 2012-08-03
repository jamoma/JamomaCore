/* 
 * Jamoma DSP Audio Object Base Class
 * Copyright 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_AUDIO_OBJECT_H__
#define __TT_AUDIO_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTAudioSignal.h"
#include "TTAudioSignalArray.h"


// Forward declaration of TTAudioObject for the typedef that follows...
class TTAudioObject;

/** A type that can be used to store a pointer to a process method (which calculates a vector of samples). */
typedef TTErr (TTAudioObject::*TTProcessMethod)(TTAudioSignalArrayPtr in, TTAudioSignalArrayPtr out);

/**	A type that can be used to store a pointer to a calculate method (which calculates a single sample). */
typedef TTErr (TTAudioObject::*TTCalculateMethod)(const TTFloat64& x, TTFloat64& y, TTPtr data);


/**	A convenience macro to be used by subclasses for setting the process method.
	 @param	methodName	The name of the method to use for processing audio vectors.	*/
#define setProcessMethod(methodName)				setProcess((TTProcessMethod)& thisTTClass ::methodName )

/**	A convenience macro to be used by subclasses for setting the calculate method.
	@param	methodName	The name of the method to use for processing individual audio samples.	*/
#define setCalculateMethod(methodName)				setCalculate((TTCalculateMethod)& thisTTClass ::methodName )


#define TT_WRAP_CALCULATE_METHOD(methodName) \
TTAudioSignal&	in = inputs->getSignal(0); \
TTAudioSignal&	out = outputs->getSignal(0); \
TTUInt16		vs; \
TTSampleValue*	inSample; \
TTSampleValue*	outSample; \
TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out); \
TTPtrSizedInt	channel; \
\
for (channel=0; channel<numchannels; channel++) { \
	inSample = in.mSampleVectors[channel]; \
	outSample = out.mSampleVectors[channel]; \
	vs = in.getVectorSizeAsInt(); \
	\
	while (vs--) { \
		methodName (*inSample, *outSample, channel); \
		outSample++; \
		inSample++; \
	} \
}\
return kTTErrNone;



/****************************************************************************************************/
// Class Specification

/**	TTAudioObject is the base class for all audio generating and processing objects in Jamoma DSP.
 *	
 *	The theory of operation is that this class handles the public interface to any subclass,
 *	including the main processing method, which calls an appropriate method through a function pointer.
 *	By default, this points to the built-in bypassProcess().  Subclasses then set it to point to their 
 *	own process() method(s) as needed.
 */
class TTDSP_EXPORT TTAudioObject : public TTObject {
protected:
	TTUInt32				sr;							///< Current sample rate being used by this object
	TTFloat64				srInv;						///< 1.0 over the current sample rate (inverse)
	TTFloat64				srMill;						///< 1/1000 of the current sample rate (samples per millisecond)
	TTUInt16				maxNumChannels;				///< This is the maximum number of channels that can be guaranteed to work
	TTBoolean				unused;						// old var that is not used anymore, but we want to keep the struct size the same
	TTBoolean				attrBypass;					///< Are we bypassing the processMethod?
	TTBoolean				attrMute;					///< Mute the processMethod.
	TTProcessMethod			processMethod;				///< This function pointer points to the active (non-bypass) processing routine.
	TTProcessMethod			currentProcessMethod;		///< This function pointer always points to the current processing routine.
	TTCalculateMethod		calculateMethod;			///< This function pointer points to the active (non-bypass) calculate routine.
	TTCalculateMethod		currentCalculateMethod;		///< This function pointer always points to the current calculate routine.
	TTAudioSignalArray*		inputArray;					///< If the process method is passed a signal, rather than an array of signals, we wrap the signal in this array.
	TTAudioSignalArray*		outputArray;				///< If the process method is passed a signal, rather than an array of signals, we wrap the signal in this array.
	TTFloat64				startProcessingTime;		///< The time at which this object's process method was last invoked (for benchmarking)
	TTFloat64				accumulatedProcessingTime;	///< The amount of time spent in this object's process method (for benchmarking)
	TTFloat64				accumulatedProcessingCalls;	///< The number of times the process method has been called (for benchmarking)
	
	/** Set the audio processing routine to point to a method that is defined as an arg to this function.	*/
	TTErr setProcess(TTProcessMethod processMethod);
		
	/** Set the sample calculate routine to point to a method that is defined as an arg to this function.	*/
	TTErr setCalculate(TTCalculateMethod newCalculateMethod);
		
	/** Bypass the audio processing routine and copy all input samples to the output unchanged.				*/
	TTErr setBypass(const TTValue& value);
	
	/**	Reset the benchmarking accumulation used to calculate the results of getProcessingBenchmark().		*/
	TTErr resetBenchmarking();
	
	/**	Return the average time spent by this object processing audio since the last reset.					*/
	TTErr getProcessingBenchmark(TTValueConstRef, TTValueRef v);
	
public:
	/** Mute the audio processing routine and zero all output.												*/
	TTErr setMute(const TTValue& value);

	/**	Setter for the maxNumChannels attribute. 	*/
	TTErr setMaxNumChannels(const TTValue& newValue);

	/**	Increase the maxNumChannels attribute, if neccessary. 	*/
	TTErr adaptMaxNumChannels(const TTUInt16 newMaxNumChannels)
	{
		if (newMaxNumChannels > maxNumChannels)
			return setAttributeValue(kTTSym_maxNumChannels, newMaxNumChannels);
		else
			return kTTErrNone;
	}
	
	/**	Setter for the sample-rate attribute.		*/
	TTErr setSr(const TTValue& newValue);
	
	
	/**	Convenience method for updating the sample-rate.	*/
	TTErr setSampleRate(const TTUInt32& newSampleRate)
	{
		if (newSampleRate && newSampleRate != sr)
			return setAttributeValue(kTTSym_sampleRate, (unsigned int)newSampleRate);
		else
			return kTTErrNone;
	}
	
	
protected:
	//** Constructor.  Requires that the maximum number of channels to be used with this instance is defined.	*/
	TTAudioObject(TTValue& arguments);
	
public:
	/** Destructor. */
	virtual ~TTAudioObject();
		
	
	/**	Calculate a single sample of output for a single sample of input. 
		@param	x	The input to the function.
		@param	y	The output of the function.
		@return		An error, if any.
	 */
	TTErr calculate(const TTFloat64& x, TTFloat64& y);
	TTErr calculate(const TTValue& x, TTValue& y);
	TTErr calculateMessage(TTValueConstRef input, TTValueRef output);

	
	/**	A process method that may be used by subclasses to wrap a calculate method in a semi-standard way.
		Unfortunately, this is slow.  An alternative is to use the #TT_WRAP_CALCULATE_METHOD macro.
	 */
	TTErr calculateProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/** Process the input signal, resulting in an output signal. This method wraps the actual process method
	 	that will be called.
	 	@param in	The input signal.
	 	@param out	The output signal.
	 	@return 	An error code.							*/
	TTErr process(TTAudioSignal& in, TTAudioSignal& out);
	
	// shortcut for when the caller is using pointers
	TTErr process(TTAudioSignal* in, TTAudioSignal* out)
	{
		return process(*in, *out);
	}
	
	
	/** Process the an output signal only, e.g. for a signal generator. This method wraps the actual process method
	 	that will be called.
	 	@param in	The input signal.
	 	@param out	The output signal.
	 	@return 	An error code.							*/
	TTErr process(TTAudioSignal& out);

	// shortcut for when the caller is using pointers
	TTErr process(TTAudioSignal* out)
	{
		return process(*out);
	}
	
	/** Process two input signals, resulting in two output signals. 
		This method wraps the actual process method, which may use the extra signal as a sidechain or other input.
	 	@param in1	The main input signal.
	 	@param in2	A secondary or sidechain input signal.
	 	@param in1	The main output signal.
	 	@param in2	A secondary or sidechain output signal.
	 	@return 	An error code.							*/
	TTErr process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2);

	// shortcut for when the caller is using pointers
	TTErr process(TTAudioSignal* in1, TTAudioSignal* in2, TTAudioSignal* out1, TTAudioSignal* out2)
	{
		return process(*in1, *in2, *out1, *out2);
	}
	
	/** Process two input signals, resulting in an output signal. 
		This method wraps the actual process method that will be called.
	 	@param in1	The main input signal.
	 	@param in2	A secondary or sidechain input signal.
	 	@param out	The output signal.
	 	@return 	An error code.							*/
	TTErr process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out);

	// shortcut for when the caller is using pointers
	TTErr process(TTAudioSignal* in1, TTAudioSignal* in2, TTAudioSignal* out)
	{
		return process(*in1, *in2, *out);
	}
	
	/**	Process an array of audio signals. */
	TTErr process(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	
	/**	The default audio processing method, which simply copies a signal through with no modifications.		*/
	TTErr bypassProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Produces a result for calls to calculate when the unit is bypassed.  */
	TTErr bypassCalculate(const TTFloat64& x, TTFloat64& y, TTPtr data);
	
	/**	A muted audio processing method, which simply copies zeroes to the output.		*/
	TTErr muteProcess(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/**	A default calculate method, which simply calls the process method with 1 channel signals that are 1 sample in length.  
		This method is not fast, and if you anticipate the calculate method to be called often, you should write a proper
		calculate method in the subclass.  */
	TTErr defaultCalculateMethod(const TTFloat64& x, TTFloat64& y, TTPtr data);
	
	
	// UTILITIES
	
	/**	Convert Hertz to radians.
	 *
	 *	NOTE: Be sure to set the sr for this object before calling this function   */
	TTFloat64 hertzToRadians(const TTFloat64 hz);

	/**	Convert radians into Hertz.
	 *
	 *	NOTE: Be sure to set the sr for this object before calling this function   */
	TTFloat64 radiansToHertz(const TTFloat64 radians);

	/** degrees-to-radians conversion */
	TTFloat64 degreesToRadians(const TTFloat64 degrees);

	/** radians-to-degrees conversion */
	TTFloat64 radiansToDegrees(const TTFloat64 radians);

	/** Decay Time (seconds) to feedback coefficient conversion */
	TTFloat64 decayToFeedback(const TTFloat64 decay_time, TTFloat64 delay);

	/** Return the decay time based on the feedback coefficient */
	TTFloat64 feedbackToDecay(const TTFloat64 feedback, const TTFloat64 delay);

	/** Convert linear amplitude into deciBels.*/
	TTFloat64 linearToDb(const TTFloat64 value);

	/** Convert deciBels into linear ampliude.*/
	TTFloat64 dbToLinear(TTFloat64 value);
	
	/** Convert midi into linear amplitude. */
	TTFloat64 midiToLinearGain(TTFloat64 value);
	
	/** Convert linear amplitude into midi. */
	TTFloat64 linearGainToMidi(TTFloat64 value);
	

	/** An idiosyncratic utility for slightly randomizing a number. 
		Specifically this is used in applications such as randoming delay times for a reverb. */
	TTFloat64 deviate(TTFloat64 value);

	/** Generate the next prime number higher than the value passed in.*/
	TTUInt32 prime(TTUInt32 value);

};


typedef TTAudioObject* TTAudioObjectPtr;


#endif // __TT_AUDIO_OBJECT_H__

