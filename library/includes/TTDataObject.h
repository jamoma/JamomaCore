/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DATA_OBJECT_H__
#define __TT_DATA_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"


/****************************************************************************************************/
// Class Specification

/**	TTDataObject is the base class for all data generating and processing objects.
	It still has knowledge and support for sample-rates, but not channel counts or vector processing.
 */
class TTFOUNDATION_EXPORT TTDataObject : public TTObject {
protected:
	TTPtrSizedInt		reserved1;			///< Reserved -- May be used for something in the future without changing the size of the struct.
	TTPtrSizedInt		reserved2;			///< Reserved -- May be used for something in the future without changing the size of the struct.

protected:
	//** Constructor.	*/
	TTDataObject(TTValue& arguments);

public:	
	/** Destructor. */
	virtual ~TTDataObject();	
	
};

#include "TTMatrix.h"

#endif // __TT_DATA_OBJECT_H__
