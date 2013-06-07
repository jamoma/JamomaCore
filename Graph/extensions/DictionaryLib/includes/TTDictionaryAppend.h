/** @file
 *
 * @ingroup graphDictionaryLib
 *
 * @brief Object that appends keys/values to a dictionary
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_DICTIONARY_APPEND_H__
#define __TT_DICTIONARY_APPEND_H__

#include "TTDSP.h"


/**	The append# object takes a dictionary and adds a key/value to that dictionary */
class TTDictionaryAppend : public TTDataObjectBase {
	TTCLASS_SETUP(TTDictionaryAppend)
	
protected:
	
	TTSymbol	mKey;
	TTValuePtr	mValue;
	
	TTErr dictionary(const TTValue& input, TTValue& output);

	TTErr getKey(TTValue& newValue);
	TTErr setKey(const TTValue& newValue);
	
	TTErr getValue(TTValue& newValue);
	TTErr setValue(const TTValue& newValue);
};




#endif // __TT_DICTIONARY_APPEND_H__
