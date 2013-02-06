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

class TTMODULAR_EXPORT TTCueManager : public TTDataObjectBase
{
	TTCLASS_SETUP(TTCueManager)
	
private:
	
	TTValue				mOrder;							///< ATTRIBUTE : cues are ordered by name
	TTSymbol			mCurrent;						///< ATTRIBUTE : the current cue name
	TTInt32				mCurrentPosition;				///< ATTRIBUTE : the current cue position
	TTSymbol			mNamespace;						///< ATTRIBUTE : the name of the namespace selection to use
	TTHashPtr			mCues;							///< ATTRIBUTE : a hash table containing <name, TTCuePtr>
	
	TTCuePtr			mCurrentCue;					///< the current cue
	TTAddressItemPtr    mDefaultNamespace;				///< an internal default namespace
	
	TTCallbackPtr		mReturnLineCallback;			///< Callback to return back cue lines to the owner of this cuemanager
	
	/** */
	TTErr	setOrder(const TTValue& value);
	
	/** */
	TTErr	getCurrentDescription(TTValue& value);
	TTErr	setCurrentDescription(const TTValue& value);
	
	/** */
	TTErr	getCurrentRamp(TTValue& value);
	TTErr	setCurrentRamp(const TTValue& value);
	
	/** */
	TTErr	NamespaceClear(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	NamespaceAppend(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	NamespaceRemove(const TTValue& inputValue, TTValue& outputValue);
	
	/** Select all items of the namespace which are in a cue.
	 name : use the given cue.
	 nothing : use the current cue */
	TTErr	NamespaceSelect(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	Clear();
	
	/** Store a cue : 
		name/id : create a new cue.
		nothing : store into the current cue */
	TTErr	Store(const TTValue& inputValue, TTValue& outputValue);
    
    /** Prepare a cue to increase any operation (recall, interpolation, mix) :
     name/id : prepare the cue.
     nothing : prepare the current cue */
    TTErr   Prepare(const TTValue& inputValue, TTValue& outputValue);
	
	/** Recall a cue : 
		name/id : recall the cue.
		nothing : recall the current cue */
	TTErr	Recall(const TTValue& inputValue, TTValue& outputValue);
	
	/** Output a cue using the mReturnLineCallback : 
	 name/id : output the cue.
	 nothing : output the current cue */
	TTErr	Output(const TTValue& inputValue, TTValue& outputValue);
	
	/** Interpolate 2 cues : 
		name1, name2, position : interpolate between the 2 given cues
		TODO : name1, position : interpolate between the current cue and the given cue */
	TTErr	Interpolate(const TTValue& inputValue, TTValue& outputValue);
	
	/** Mix several cues : 
		name1, factor1, name2, factor2, ... : mix each given cues */
	TTErr	Mix(const TTValue& inputValue, TTValue& outputValue);
	
	/** Move a cue : 
	 name + position : move the cue to the given position. */
	TTErr	Move(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove a cue : 
		name : remove the cue.
		nothing : remove the current cue */
	TTErr	Remove(const TTValue& inputValue, TTValue& outputValue);
	
	/** Rename a cue : 
	 name + newName: rename the cue with the newName */
	TTErr	Rename(const TTValue& inputValue, TTValue& outputValue);
	
	/** Copy a cue : 
	 name : copy the cue (and optionally give a new name + a position)  */
	TTErr	Copy(const TTValue& inputValue, TTValue& outputValue);
	
	/** Sequence a sub set of cues clearing redundant command lines :
		name1, name2, name3, ... : make the optimization between all given cues. */
	TTErr	Sequence(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr	WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	TTErr	WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	TTErr	ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr	notifyOrderObservers();
};

typedef TTCueManager* TTCueManagerPtr;

#endif // __TT_CUE_MANAGER_H__
