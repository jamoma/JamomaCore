/* 
 * A Container object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_CONTAINER_H__
#define __TT_CONTAINER_H__

#include "TTPeerObjectModel.h"

/*
 */

class TTPOM_EXPORT TTContainer : public TTObject
{
	
public:
	
	TTCLASS_SETUP(TTContainer)

	
	TTUInt8				mPriority;				///< ATTRIBUTE: does this container have a priority over other containers ?
	TTSymbolPtr			mDescription;			///< ATTRIBUTE: 

	
	/**	Getter for m attribute. */
	TTErr getPriority(TTValue& value);
	/**	Setter for m attribute. */
	TTErr setPriority(const TTValue& value);
	
	/**	Getter for m attribute. */
	TTErr getDescription(TTValue& value);
	/**	Setter for m attribute. */
	TTErr setDescription(const TTValue& value);	
	
};

typedef TTContainer* TTContainerPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTPOM_EXPORT TTContainerCallback(TTPtr baton, TTValue& data);

#endif // __TT_CONTAINER_H__
