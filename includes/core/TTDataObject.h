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
#include "TTAudioObject.h"


/****************************************************************************************************/
// Class Specification

/**	TTDataObject is the base class for all asynchronous data generating and processing objects in TTBlue.
	It still has knowledge and support for sample-rates, but not channel counts or vector processing.
	
	The object processes messages and attributes like any other TTObject.
	However, this notion is extended by adding the concept of additional inlets and outlets.
	Inlets and outlets are registered in the constructor.

	NOTE [TAP] 2008/06/28 -- I'm not really sure what I had in mind by the above, and it doesn't seem to be implemented
	Instead it seems like we should just declare a process() method that takes a TTValue& input and a TTValue& output.
*/
class TTEXPORT TTDataObject : public TTObject {
private:
	friend class TTGlobal;				///< Declare that the global object is friend so it can access the globalSr member
	
protected:
	TTUInt32						sr;									///< Current sample rate being used by this object
	TTFloat64						srInv;								///< 1.0 over the current sample rate (inverse)
	TTFloat64						srMill;								///< 1/1000 of the current sample rate (samples per millisecond)

//	TTUInt16		numInlets;			///< Current number of inlets
//	TTUInt16		numOutlets;			///< Current number of outlets

public:
	//** Constructor.  Requires that the maximum number of channels to be used with this instance is defined.	*/
	TTDataObject(const char* name);
	
	/** Destructor. */
	virtual ~TTDataObject();
	
	
	/**	Setter for the sample-rate attribute.		*/
	TTErr setSr(const TTValue& newValue);
};


#endif // __TT_DATA_OBJECT_H__

