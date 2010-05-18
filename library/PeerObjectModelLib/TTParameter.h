/* 
 * A Parameter Object
 * Copyright © 2008, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_PARAMETER_H__
#define __TT_PARAMETER_H__

#include "TTPeerObjectModel.h"

/**	TTParameter ... TODO : an explanation
 */
class TTPOM_EXPORT TTParameter : public TTObject
{
	TTCLASS_SETUP(TTParameter)
	
	public:

	private:
	
	public:
	
	private :
	
};

typedef TTParameter* TTParameterPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTPOM_EXPORT TTParameterCallback(TTPtr baton, TTValue& data);

#endif // __TT_PARAMETER_H__
