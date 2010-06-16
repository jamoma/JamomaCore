/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __NONE_DATASPACE_H__
#define __NONE_DATASPACE_H__

#include "DataspaceLib.h"

#define DEFAULT_SAMPLE_RATE	44100.0

/****************************************************************************************************/
// Class Specifications

class NoneUnit : DataspaceUnit{
	public:
		NoneUnit();
		~NoneUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


// Specification of our base class
class NoneDataspace : DataspaceLib{
	public:
		NoneDataspace();
		~NoneDataspace();
};


#endif // __NONE_DATASPACE_H__
