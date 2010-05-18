/* 
 * A Mapper Object
 * Copyright © 2008, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MAPPER_H__
#define __TT_MAPPER_H__

#include "TTPeerObjectModel.h"

/**	TTMapper ... TODO : an explanation
 */
class TTPOM_EXPORT TTMapper : public TTObject
{
	TTCLASS_SETUP(TTMapper)
	
	public:

	private:
	
	public:
	
	private :
};

typedef TTMapper* TTMapperPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTFOUNDATION_EXPORT TTMapperCallback(TTPtr baton, TTValue& data);

#endif // __TT_MAPPER_H__
