/* 
 * TTBlue Audio Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_AUDIO_OBJECT_H__
#define __TT_AUDIO_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTAudioSignal.h"


// Forward declaration of TTAudioObject for the typedef that follows...
class TTAudioObject;

/** A type that can be used to store a pointer to a process method */
typedef TTErr (TTAudioObject::*TTProcessMethod)(TTAudioSignal& in, TTAudioSignal& out);

/** A type that can be used to store a pointer to a process method */
typedef TTErr (TTAudioObject::*TTProcessWithSidechainMethod)(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2);


/****************************************************************************************************/
// Class Specification

/**	TTAudioObject is the base class for all audio generating and processing objects in TTBlue.
 *	
 *	The theory of operation is that this class handles the public interface to any subclass,
 *	including the main processing method, which calls an appropriate method through a function pointer.
 *	By default, this points to the built-in bypassProcess().  Subclasses then set it to point to their 
 *	own process() method(s) as needed.
 */
class TTEXPORT TTAudioObject : public TTObject {
private:
	friend class TTGlobal;						///< Declare that the global object is friend so it can access the globalSr member

protected:
	static TTUInt32					globalSr;							///< Current sample rate as understood by the environment as a whole
	TTUInt32						sr;									///< Current sample rate being used by this object
	TTFloat64						srInv;								///< 1.0 over the current sample rate (inverse)
	TTFloat64						srMill;								///< 1/1000 of the current sample rate (samples per millisecond)
	TTUInt8							maxNumChannels;						///< This is the maximum number of channels that can be guaranteed to work
	TTBoolean						attrProcessInPlace;					///< This flag indicates that the object should process the samples "in-place", such that the processed samples are actually in the input
	TTBoolean						attrBypass;							///< Are we bypassing the processMethod?
	TTProcessMethod					processMethod;						///< This function pointer points to the active (non-bypass) processing routine
	TTProcessMethod					currentProcessMethod;				///< This function pointer always points to the current processing routine
	TTProcessWithSidechainMethod	processWithSidechainMethod;			///< This function pointer points to the active (non-bypass) processing routine with sidechains, if applicable
	TTProcessWithSidechainMethod	currentProcessWithSidechainMethod;	///< This function pointer always points to the current processing routine with sidechains, if applicable

	/** Set the audio processing routine to point to a method that is defined as an arg to this function.	*/
	TTErr setProcess(TTProcessMethod processMethod);

	/** Set the audio processing routine to point to a method that is defined as an arg to this function.	*/
	TTErr setProcessWithSidechain(TTProcessWithSidechainMethod processMethod);

	/** Bypass the audio processing routine and copy all input samples to the output unchanged.				*/
	TTErr setBypass(const TTAttribute&, const TTValue& value);

	/**	Setter for the maxNumChannels attribute. 	*/
	TTErr setMaxNumChannels(const TTAttribute&, const TTValue& newValue);

	/**	Setter for the sample-rate attribute.		*/
	TTErr setSr(const TTAttribute&, const TTValue& newValue);

public:
	//** Constructor.  Requires that the maximum number of channels to be used with this instance is defined.	*/
	TTAudioObject(const char* name, TTUInt8 maxNumChannels);
	
	/** Destructor. */
	virtual ~TTAudioObject();
		
	/** Process the input signal, resulting in an output signal. This method wraps the actual process method
	 	that will be called.
	 	@param in	The input signal.
	 	@param out	The output signal.
	 	@return 	A TTBlue error code.							*/
	TTErr process(TTAudioSignal& in, TTAudioSignal& out);
	
	/** Process the an output signal only, e.g. for a signal generator. This method wraps the actual process method
	 	that will be called.
	 	@param in	The input signal.
	 	@param out	The output signal.
	 	@return 	A TTBlue error code.							*/
	TTErr process(TTAudioSignal& out);

	/** Process two input signals, resulting in two output signals. 
		This method wraps the actual process method, which may use the extra signal as a sidechain or other input.
	 	@param in1	The main input signal.
	 	@param in2	A secondary or sidechain input signal.
	 	@param in1	The main output signal.
	 	@param in2	A secondary or sidechain output signal.
	 	@return 	A TTBlue error code.							*/
	TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2);
	
	/** Process two input signals, resulting in an output signal. 
		This method wraps the actual process method that will be called.
	 	@param in1	The main input signal.
	 	@param in2	A secondary or sidechain input signal.
	 	@param out	The output signal.
	 	@return 	A TTBlue error code.							*/
	TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out);
	
	/**	The default audio processing method, which simply copies a signal through with no modifications.		*/
	TTErr bypassProcess(TTAudioSignal& in, TTAudioSignal& out);
	
	/**	The default audio processing method for calls with side chains, which simply copies the signals through with no modifications.		*/
	TTErr bypassWithSidechainProcess(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2);
	
	
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

	/** An idiosyncratic utility for slightly randomizing a number. 
		Specifically this is used in applications such as randoming delay times for a reverb. */
	TTFloat64 deviate(TTFloat64 value);

	/** Generate the next prime number higher than the value passed in.*/
	TTUInt32 prime(TTUInt32 value);

};


#endif // __TT_AUDIO_OBJECT_H__

