/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_DATA_OBJECT_H__
#define __TT_DATA_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"
#include "TTAudioSignal.h"


// Forward declaration of TTAudioObject for the typedef that follows...
//class TTAudioObject;

/** A type that can be used to store a pointer to a process method */
//typedef TTErr (TTAudioObject::*TTProcessMethod)(TTAudioSignal& in, TTAudioSignal& out);


/****************************************************************************************************/
// Class Specification

/**	TTDataObject is the base class for all asynchronous data generating and processing objects in TTBlue.
 *	
	The object processes messages and attributes like any other TTObject.
	However, this notion is extended by adding the concept of additional inlets and outlets.
	Inlets and outlets are registered in the constructor.
 
 
 
 *	The theory of operation is that this class handles the public interface to any subclass,
 *	including the main processing method, which calls an appropriate method through a function pointer.
 *	By default, this points to the built-in bypassProcess().  Subclasses then set it to point to their 
 *	own process() method(s) as needed.
 */
class TTEXPORT TTDataObject : public TTObject {
private:
	friend class TTGlobal;				///< Declare that the global object is friend so it can access the globalSr member

protected:
	TTUInt16		numInlets;			///< Current number of inlets
	TTUInt16		numOutlets;			///< Current number of outlets

	/** Set the audio processing routine to point to a method that is defined as an arg to this function.	*/
//	TTErr setProcess(TTProcessMethod processMethod);

	/** Bypass the audio processing routine and copy all input samples to the output unchanged.				*/
//	TTErr setBypass(const TTValue& value);

	/**	Setter for the maxNumChannels attribute. 	*/
//	TTErr setMaxNumChannels(const TTValue& newValue);

	/**	Setter for the sample-rate attribute.		*/
	TTErr setSr(const TTAttribute&, const TTValue& newValue);

public:
	//** Constructor.  Requires that the maximum number of channels to be used with this instance is defined.	*/
	TTDataObject(const char* name, TTUInt8 maxNumChannels);
	
	/** Destructor. */
	virtual ~TTDataObject();
		
	/** Process the input signal, resulting in an output signal. This method wraps the actual process method
	 *	that will be called.
	 *	@param in	The input signal.
	 *	@param out	The output signal.
	 *	@return 	A TTBlue error code.							*/
	TTErr process(TTAudioSignal& in, TTAudioSignal& out);
	
	/** Process the an output signal only, e.g. for a signal generator. This method wraps the actual process method
	 *	that will be called.
	 *	@param in	The input signal.
	 *	@param out	The output signal.
	 *	@return 	A TTBlue error code.							*/
	TTErr process(TTAudioSignal& out);
	
	/**	The default audio processing method, which simply copies a signal through with no modifications.		*/
	TTErr bypassProcess(TTAudioSignal& in, TTAudioSignal& out);
	
	
	
	/** Registers an outlet handler (pointer to a method).  The outlet handler is the thing that does something
		with any values sent to outlets.  This is generally called by a host environment for building a 
		network of objects, and not called by the object itself.
	*/
//	???
	
};


#endif // __TT_DATA_OBJECT_H__

