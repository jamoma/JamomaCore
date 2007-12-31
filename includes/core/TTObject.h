/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTBase.h"
#include "TTList.h"
//#include "TTHash.h"

/****************************************************************************************************/
// Class Specification

class TTObject : TTBase {
public:
	TTObject();
	virtual ~TTObject();
	
	/*
		The theory on parameters is that the subclass calls registerParameter()
		and the base class manages a list of all registered parameters.
		
		The the end-user calls setParameter() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	registerParameter(TTSymbol& name, TTSymbol& type, long offset);
	registerParameter(TTSymbol& name, TTSymbol& type, long offset, TTGetterType getter, TTSetterType setter);
	setParameterValue(TTSymbol& name, TTValue& value);
	getParameterValue(TTSymbol& name, TTValue& value);
	//setParameterValue(TTSymbol& name, TTUInt32& value);	// convenience wrappers?
	//getParameterValue(TTSymbol& name, TTUInt32& value);
	//setParameterValue(TTSymbol& name, TTFloat32& value);
	//getParameterValue(TTSymbol& name, TTFloat32& value);
	
	registerMessage(TTSymbol& name, TTMethod method);
	
};


#endif // __TT_OBJECT_H__

