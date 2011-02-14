/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTDataObject.h"


/****************************************************************************************************/
// Class Specification

class TTFOUNDATION_EXPORT TTMatrix : TTDataObject {
	TTCLASS_SETUP(TTMatrix)
	
	virtual TTErr test(TTValue& returnedTestInfo);


};


typedef TTMatrix* TTMatrixPtr;


#endif // __TT_MATRIX_H__

