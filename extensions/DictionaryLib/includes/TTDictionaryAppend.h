/* 
 * Object that appends keys/values to a dictionary
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DICTIONARY_APPEND_H__
#define __TT_DICTIONARY_APPEND_H__

#include "TTDSP.h"


/**	The append# object takes a dictionary and adds a key/value to that dictionary */
class TTDictionaryAppend : public TTDataObject {
	TTCLASS_SETUP(TTDictionaryAppend)
	
protected:
	
	TTSymbol	mKey;
	TTValuePtr	mValue;
	
	TTErr dictionary(const TTValue& input, TTValue& output);
	TTErr getValue(TTValue& newValue);
	TTErr setValue(const TTValue& newValue);
};




#endif // __TT_DICTIONARY_APPEND_H__
