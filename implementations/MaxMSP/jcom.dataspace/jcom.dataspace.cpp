/* 
 * jcom.dataspace
 * External for Jamoma: map input to output: y=f(x)
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClassWrapperMax.h"

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	TTFoundationInit();
	return wrapTTClassAsMaxClass(TT("dataspace"), "jcom.dataspace", NULL);
}
