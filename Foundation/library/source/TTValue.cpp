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


TTElement::~TTElement()
{
	if (mType == kTypeDictionary) {
//		TTDictionary d(this); // when d goes out of scope the refcount will decrease and the dictionary will be potentially freed.
// TODO: LEAKING MEMORY BY COMMENTING OUT THE ABOVE
// For a currently undetermined reason, the above construction of a dictionary fails because the symbol table appears to be bogus when a program exits.
// Not sure what TTValue objects are being destructed when the app quits -- it seems like values with dictionary content should be quite limited?
	}
	// TODO: need special handling for strings also?
}


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


// The equals operator should assign an existing dictionary, not copy it.

TTElement& TTElement::operator = (const TTDictionary value)
{
	TTBoolean unused;

	if (mType != kTypeDictionary) {
		TTDictionary *newDictionary = new TTDictionary(value.name(), unused);
		mValue.dictionary = (TTSymbolBase*)newDictionary->name().rawpointer();
		mType = kTypeDictionary;
	}
	else {
		TTDictionary thisDictionary(TT(mValue.dictionary), unused);
		thisDictionary = value;
	}
	
	return *this;
}

