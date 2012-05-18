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

class TTMODULAR_EXPORT TTCue : public TTDataObject
{
	TTCLASS_SETUP(TTCue)
	
	private :
	
	TTSymbolPtr					mName;							///< ATTRIBUTE : the name of the cue
	TTSymbolPtr					mComment;						///< ATTRIBUTE : a comment for the cue
	TTValue						mNamespace;						///< ATTRIBUTE : a set of addresses to store/recall
	
	TTScriptPtr					mScript;						///< a script containing relativeAddress and value
	
	/** */
	TTErr	getNamespace(TTValue& value);
	TTErr	setNamespace(const TTValue& value);
	
	/** */
	TTErr	Clear();
	
	/** Store namespace object values */
	TTErr	Store();
	
	/** Recall namespace object values */
	TTErr	Recall();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** a recursive method to store a namespace into a script object */
	TTErr	processStorage(TTObjectPtr aScript, const TTValue aNamespace);
};

typedef TTCue* TTCuePtr;

/** Return Yes if the node have to be part of the cue */
TTBoolean TTMODULAR_EXPORT TTCueTestObject(TTNodePtr node, TTPtr args);

TTBoolean TTMODULAR_EXPORT TTCueCompareNodePriority(TTValue& v1, TTValue& v2);

#endif // __TT_CUE_H__
