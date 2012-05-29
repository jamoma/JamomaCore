/* 
 * A Cue Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CUE_H__
#define __TT_CUE_H__

#include "TTModular.h"

class TTScript;
typedef TTScript* TTScriptPtr;

/**	TTCue ... TODO : an explanation
 
 
 */


/** Internal class to describe and manage the namespace of a cue */

// a namespace is a TTList
typedef	TTList* NamespacePtr;

class NamespaceItem
{
	public :
	TTNodeAddressPtr	address;	// an absolute or a relative address
	NamespacePtr		children;	// a sub namespace relative to the address
	
	NamespaceItem(const TTNodeAddressPtr anAddress, const NamespacePtr aNamespace);
	~NamespaceItem();
};
typedef NamespaceItem* NamespaceItemPtr;



class TTMODULAR_EXPORT TTCue : public TTDataObject
{
	TTCLASS_SETUP(TTCue)
	
	private :
	
	TTSymbolPtr					mName;							///< ATTRIBUTE : the name of the cue
	TTSymbolPtr					mComment;						///< ATTRIBUTE : a comment for the cue
	TTUInt32					mRamp;							///< ATTRIBUTE : a time ramping value for the cue
	TTScriptPtr					mScript;						///< a script containing relativeAddress and value
	
	/** */
	TTErr	getNamespace(TTValue& value);
	
	/** */
	TTErr	setRamp(const TTValue& value);
	
	/** */
	TTErr	Clear();
	
	/** Store a namespace object values */
	TTErr	Store(const TTValue& inputValue, TTValue& outputValue);
	
	/** Recall namespace object values */
	TTErr	Recall();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** a recursive method to store a namespace into a script object */
	TTErr	processStore(TTObjectPtr aScript, TTNodeAddressPtr scriptAddress, const NamespacePtr aNamespace);
	
	/** a recursive method to process a namespace from a script object */
	TTErr	processNamespace(TTObjectPtr aScript, NamespacePtr *returnedNamespace);
	
	/** a recursive method to change each ramping value into a script */
	TTErr	processRamp(TTObjectPtr aScript, TTUInt32 ramp);
	
	friend TTErr TTMODULAR_EXPORT TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position);
};

typedef TTCue* TTCuePtr;

/** Return Yes if the node have to be part of the cue */
TTBoolean TTMODULAR_EXPORT TTCueTestObject(TTNodePtr node, TTPtr args);

TTBoolean TTMODULAR_EXPORT TTCueCompareNodePriority(TTValue& v1, TTValue& v2);


/* Parse a namespace value : < address1, address2, {, subAddress1, subAddress2, }, address3, ... > */
NamespacePtr	TTMODULAR_EXPORT TTCueNamespaceParse(const TTValue& aNamespaceValue);

/* Edit a namespace value : < address1, address2, {, subAddress1, subAddress2, }, address3, ... > */
TTErr			TTMODULAR_EXPORT TTCueNamespaceEdit(const NamespacePtr aNamespace, TTValue& returnedNamespaceValue);

/* Copy a namespace */
TTErr			TTMODULAR_EXPORT TTCueNamespaceCopy(const NamespacePtr aNamespace, NamespacePtr* aNamespaceCopy);

/* Append a namespace to another */
TTErr			TTMODULAR_EXPORT TTCueNamespaceAppend(NamespacePtr aNamespaceToAppend, NamespacePtr aNamespace);

/* Remove a namespace from another */
TTErr			TTMODULAR_EXPORT TTCueNamespaceRemove(NamespacePtr aNamespaceToRemove, NamespacePtr aNamespace);

/* a TTFunctionMatch to find a namepace item */
void			TTMODULAR_EXPORT TTCueNamespaceFindItem(const TTValue& itemValue, TTPtr itemPtrToMatch, TTBoolean& found);

TTErr			TTMODULAR_EXPORT TTCueInterpolate(TTCue* cue1, TTCue* cue2, TTFloat64 position);
#endif // __TT_CUE_H__
