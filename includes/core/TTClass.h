/* 
 * TTBlue Class Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CLASS_H__
#define __TT_CLASS_H__

#include "TTAudioObject.h"
#include "TTHash.h"
#include "TTEnvironment.h"


/****************************************************************************************************/
// Class Specifications

/**
	The TTClass object represents a class in the TTBlue environment.
	This is to say that it represents everything about a class except for the class itself,
	which is a subclass of TTObject.
	
	//TODO: we could override the () operator to make TTClass a functor for creating instances.
*/
class TTEXPORT TTClass : public TTElement {
private:
	friend class TTEnvironment;
	
	TTSymbolPtr						name;					///< The name of the class.
	TTValue							tags;					///< An array of TTSymbols containing tags associated with this class.
	TTObjectInstantiationMethod		instantiationMethod;	///< Pointer to the function that will create a new instance.
	TTString						path;					///< The path to executable from which this class loaded.
	TTBoolean						external;				///< Is this class external to the main library?
	TTUInt16						count;					///< Reference count for how many instantiateds of this object exist.
		
public:
	
	/**	Constructor	*/
	TTClass(const TTSymbolPtr className, const TTValue& tags, const TTObjectInstantiationMethod anInstantiationMethod);
		
	/**	Destructor */
	virtual ~TTClass();
	
	
	/**	Create a new instance of a registered #TTObject class.
		@param	className	Pass in a #TTSymbol* with the name of the unit to load.  
		@param	anObject	Upon successful return, the value will be set to a #TTObject which is the new instance.
							If the pointer is passed in as non-NULL then createUnit() will try to free to the
							existing object to which it points prior to instantiating the new unit.
		@param	anArgument	For most audio processing objects, this should be passed the maximum number of channels.
							For this reason, we overload this method with a TTUint16 argument as a convenience.
		@return				An error code.	*/
	TTErr createInstance(TTObject** anObject, TTValue& anArgument);
	
	
	/**	Free an instance of a #TTObject class.
		There are a couple of reasons we want to have this wrapper around the delete operator.
		- For instrumenting the code to investigate bugs, performance, etc.
		- So that we can handle any threading, spin-locks, mutexes, or other issues before actually freeing the object.

		@param	unit		A pointer to the unit to free.
		@return				An error code.	*/
	TTErr releaseInstance(TTObject* anObject);
	
	
};


typedef TTClass*	TTClassPtr;


#endif // __TT_CLASS_H__

