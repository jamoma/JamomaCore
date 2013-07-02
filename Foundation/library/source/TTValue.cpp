/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Jamoma Foundation class for representing values
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue, Nathan Wolek, Julien Rabin, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTValue.h"
#include "TTSymbolTable.h"
#include "TTObject.h"
#include "TTMatrix.h"
#include "TTDictionary.h"


/****************************************************************************************************/
// clear
/****************************************************************************************************/

#ifdef REVIEW_THIS_BECAUSE_HOW_ARE_WE_DEALING_WITH_STRING_MEM_NOW
void TTValue::clear()
{
	if (stringsPresent) {
		for (TTUInt16 i=0; i<numValues; i++) {
			if (type[i] == kTypeString)
				delete data[i].stringPtr;
		}
		stringsPresent = false;
	}
	delete [] data;
	delete [] type;

	init();
	data->float64 = 0.0;
	*type = kTypeNone;
	numValues = 0;		// Important: We want TTValue to contain zero values so we can build an array dynamically with the append() method [TAP]
}
#endif


TTElement::operator TTDictionary() const
{
	if (mType == kTypeDictionary) {
		TTBoolean unused;
		return TTDictionary(TT(mValue.dictionary), unused);
	}
	else
		return TTDictionary();
	// TODO: should this throw an exception?
	// otherwise how does the caller know that the empty dictionary is an error?
}


TTElement& TTElement::operator = (const TTDictionary value)
{
	TTBoolean unused;

	if (mType != kTypeDictionary) {
		TTDictionary *newDictionary = new TTDictionary(value.name(), unused);
		mValue.dictionary = (TTSymbolBase*)newDictionary->name().rawpointer();
		mType = kTypeDictionary;
	}

	TTDictionary thisDictionary(TT(mValue.dictionary), unused);

	thisDictionary = value;
	return *this;
}

