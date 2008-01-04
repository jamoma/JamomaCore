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


/****************************************************************************************************/
// Class Specification

/**	TTAudioObject is the base class for all audio generating and processing objects in TTBlue.
 *	
 *	The theory of operation is that this class handles the public interface to any subclass,
 *	including the main processing method, which calls an appropriate method through a function pointer.
 *	By default, this points to the built-in bypassProcess().  Subclasses then set it to point to their 
 *	own process() method(s) as needed.
 */
class TTAudioObject : public TTObject {
private:
	static TTBoolean	initialized;		///< Flag to indicate whether we've initialized globals or not

protected:
	static TTUInt32		globalSr;			///< Current sample rate as understood by the environment as a whole
	TTUInt32			sr;					///< Current sample rate being used by this object
	TTFloat32			srInv;				///< 1.0 over the current sample rate (inverse)
	TTFloat32			srMill;				///< 1/1000 of the current sample rate (samples per millisecond)
	TTUInt8				maxNumChannels;		///< This is the maximum number of channels that can be guaranteed to work
	TTProcessMethod		processMethod;		///< This function pointer always points to the current processing routine

	/** Set the audio processing routine to point to a method that is defined as an arg to this function.		*/
	TTErr setProcess(TTProcessMethod processMethod);

	/**	Setter for the maxNumChannels parameter.  Declared virtual so it can be overriden by subclasses.		*/
	virtual TTErr setMaxNumChannels(const TTValue& newValue);

	/**	Setter for the sample-rate parameter.  Declared virtual so it can be overriden by subclasses.			*/
	virtual TTErr setSr(const TTValue& newValue);

public:
	//** Constructor.  Requires that the maximum number of channels to be used with this instance is defined.	*/
	TTAudioObject(TTUInt8 maxNumChannels);
	
	/** Destructor. */
	virtual ~TTAudioObject();
		
	/** Process the input signal, resulting in an output signal. This method wraps the actual process method
	 *	that will be called.
	 *	@param in	The input signal.
	 *	@param out	The output signal.
	 *	@return 	A TTBlue error code.							*/
	TTErr process(TTAudioSignal& in, TTAudioSignal& out);
	
	/**	The default audio processing method, which simply copies a signal through with no modifications.		*/
	TTErr bypassProcess(TTAudioSignal& in, TTAudioSignal& out);

};


#endif // __TT_AUDIO_OBJECT_H__

