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

/** A type that can be used to store a pointer to a process method */
typedef TTErr (TTProcessMethod)(TTAudioSignal& in, TTAudioSignal& out);

/****************************************************************************************************/
// Class Specification

class TTAudioObject : TTObject {
private:	
	/*! @var bypassAttribute		pass audio through unprocessed. */
	//long	bypassAttribute;
	TTProcessMethod		process;	///< This function pointer always points to the current processing routine

public:
	TTAudioObject();
	virtual ~TTAudioObject();
		
	
	/**	The theory on audio processing is that the base class will define
		a function pointer to a 'process; function.  By default, this will be
		pointing to the built-in bypassProcess().
		
		Subclasses then set it to point to their own process() methods as 
		appropriate.  
		
		Users of the end-object then only ever need to think about calling
		process(), which is in the base-class and the details are all taken
		care of without worries.
	 */
	bypassProcess(TTAudioSignal& in, TTAudioSignal& out);
	
	
	/** Set the audio processing routine to point to a method that is defined as an arg to this function. */
	setProcess(TTProcessMethod processMethod);

};


#endif // __TT_AUDIO_OBJECT_H__

