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

class TTMODULAR_EXPORT TTCueManager : public TTObject
{
	TTCLASS_SETUP(TTCueManager)
	
private:
	
	TTValue				mAddresses;						///< ATTRIBUTE : all addresses to store into presets
	TTValue				mNames;							///< ATTRIBUTE : all cue names
	TTValue				mCurrent;						///< ATTRIBUTE : <index, name> of the current cue

	TTValue				mPresetArguments;				///< arguments for preset creation (see TTPreset constructor)
	TTListPtr			mCueList;						///< a list containing <TTCuePtr> sorted by Number attribute
	TTUInt8				mCurrentIndex;					///< ATTRIBUTE : the position of the current cue in the list (from 1 to list size, 0 mean no current index)
	
	/** */
	TTErr New();
	
	/** */
	TTErr Store(const TTValue& value);
	
	/** */
	TTErr StoreCurrent();
	
	/** */
	TTErr StoreNext(const TTValue& value);
	
	/** */
	TTErr StorePrevious(const TTValue& value);
	
	/** */
	TTErr Recall(const TTValue& value);
	
	/** */
	TTErr RecallCurrent();
	
	/** */
	TTErr RecallNext();
	
	/** */
	TTErr RecallPrevious();
	
	/** */
	TTErr Remove(const TTValue& value);
	
	/** */
	TTErr RemoveCurrent();
	
	/** */
	TTErr RemoveNext();
	
	/** */
	TTErr RemovePrevious();
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	/**  needed to be handled by a TTTextHandler */
	 TTErr WriteAsText(const TTValue& value);
	 TTErr ReadFromText(const TTValue& value);
	
	/** */
	TTErr getNames(TTValue& value);
	
	/** */
	TTErr getCurrent(TTValue& value);
	
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
