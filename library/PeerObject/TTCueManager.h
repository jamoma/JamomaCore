/* 
 * A CueManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_CUE_MANAGER_H__
#define __TT_CUE_MANAGER_H__

#include "TTModular.h"

/**	TTCueManager ... TODO : an explanation
 
 
 */

class TTCue;
typedef TTCue* TTCuePtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

// a namespace is a TTList
typedef	TTList* NamespacePtr;

class TTMODULAR_EXPORT TTCueManager : public TTDataObject
{
	TTCLASS_SETUP(TTCueManager)
	
private:
	
	TTValue				mNames;							///< ATTRIBUTE : all cue names
	TTSymbolPtr			mCurrent;						///< ATTRIBUTE : the current cue name
	TTValue				mCurrentNamespace;				///< ATTRIBUTE : the set of addresses of the current cue
	NamespacePtr		mNamespace;						///< ATTRIBUTE : a namespace to manage before to store
	TTHashPtr			mCues;							///< ATTRIBUTE : a hash table containing <name, TTCuePtr>
	
	TTCuePtr			mCurrentCue;					///< the current cue
	
	/** */
	TTErr	setNames(const TTValue& value);
	
	/** */
	TTErr	getCurrentNamespace(TTValue& value);

	/** */
	TTErr	getNamespace(TTValue& value);
	TTErr	setNamespace(const TTValue& value);
	
	/** */
	TTErr	NamespaceClear();
	
	/** */
	TTErr	NamespaceAppend(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	NamespaceRemove(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	New();
	
	/** Store a cue : 
		name + absolute address list : create a new cue.
		absolute address list : store into the current cue using the given absolute address list */
	TTErr	Store(const TTValue& inputValue, TTValue& outputValue);
	
	/** Recall a cue : 
		name : recall the cue.
		nothing : recall the current cue */
	TTErr	Recall(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove a cue : 
		name : remove the cue.
		nothing : remove the current cue */
	TTErr	Remove(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	notifyNamesObservers();
};

typedef TTCueManager* TTCueManagerPtr;

#endif // __TT_CUE_MANAGER_H__
