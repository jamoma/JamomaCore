/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __NONE_DATASPACE_H__
#define __NONE_DATASPACE_H__

#include "TTDataspace.h"

#define DEFAULT_SAMPLE_RATE	44100.0

/****************************************************************************************************/
// Class Specifications

class NoneUnit : public TTDataObject, public TTDataspaceUnit {
	TTCLASS_SETUP(NoneUnit)
public:
	void convertToNeutral(const TTValue& input, TTValue& output);
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


// Specification of our base class
class NoneDataspace : public TTDataObject, public TTDataspace {
	TTCLASS_SETUP(NoneDataspace)
};


#endif // __NONE_DATASPACE_H__
