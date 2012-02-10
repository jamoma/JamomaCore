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

class TTMODULAR_EXPORT TTCueManager : public TTDataObject
{
	TTCLASS_SETUP(TTCueManager)
	
private:
	
	TTValue				mAddresses;						///< ATTRIBUTE : all addresses to store into presets
	TTValue				mNames;							///< ATTRIBUTE : all cue names
	TTValue				mCurrent;						///< ATTRIBUTE : <index, name, ramp, comment> of the current cue
	TTValue				mPrevious;						///< ATTRIBUTE : <index, name, ramp, comment> of the previous cue
	TTValue				mNext;							///< ATTRIBUTE : <index, name, ramp, comment> of the next cue

	TTValue				mPresetArguments;				///< arguments for preset creation (see TTPreset constructor)
	TTListPtr			mCueList;						///< a list containing <TTCuePtr> sorted by Number attribute
	TTUInt8				mCurrentIndex;					///< ATTRIBUTE : the position of the current cue in the list (from 1 to list size, 0 mean no current index)
	
	/** */
	TTErr setAddresses(const TTValue& value);
	
	/** */
	TTErr New();
	
	/** */
	TTErr Store(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr StoreCurrent(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr StoreNext(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr StorePrevious(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr Recall(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr RecallCurrent();
	
	/** */
	TTErr RecallNext();
	
	/** */
	TTErr RecallPrevious();
	
	/** */
	TTErr Remove(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr RemoveCurrent();
	
	/** */
	TTErr RemoveNext();
	
	/** */
	TTErr RemovePrevious();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTTextHandler */
	 TTErr WriteAsText(const TTValue& inputValue, TTValue& outputValue);
	 TTErr ReadFromText(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr getNames(TTValue& value);
	
	/** */
	TTErr getCurrent(TTValue& value);
	
	/** */
	TTErr getPrevious(TTValue& value);
	
	/** */
	TTErr getNext(TTValue& value);
	
	/** */
	TTCuePtr getCueCurrent();
	
	/** */
	TTCuePtr getCueWithName(TTSymbolPtr name);
	
	/** */
	TTErr refreshList();
	
	/** */
	TTErr notifyNamesObservers();
};

typedef TTCueManager* TTCueManagerPtr;

#endif // __TT_CUE_MANAGER_H__
