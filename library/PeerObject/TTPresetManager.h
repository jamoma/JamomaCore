/* 
 * A PresetManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PRESET_MANAGER_H__
#define __TT_PRESET_MANAGER_H__

#include "TTModular.h"

/**	TTPresetManager ... TODO : an explanation
 
 
 */

class TTPreset;
typedef TTPreset* TTPresetPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

class TTMODULAR_EXPORT TTPresetManager : public TTDataObject
{
	TTCLASS_SETUP(TTPresetManager)
	
private:
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE : the address of the preset manager in the directory
	TTValue				mNames;							///< ATTRIBUTE : all preset names
	TTValue				mCurrent;						///< ATTRIBUTE : <index, name, comment> of the current preset
	TTValue				mPrevious;						///< ATTRIBUTE : <index, name, comment> of the previous preset
	TTValue				mNext;							///< ATTRIBUTE : <index, name, comment> of the next preset

	TTValue				mPresetArguments;				///< arguments for preset creation (see TTPreset constructor)
	TTListPtr			mPresetList;					///< a list containing <TTPresetPtr> sorted by Number attribute
	TTUInt8				mCurrentIndex;					///< ATTRIBUTE : the position of the current preset in the list (from 1 to list size, 0 mean no current index)
	
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
	TTErr getPrevious(TTValue& value);
	
	/** */
	TTErr getNext(TTValue& value);
		
	/** */
	TTErr setAddress(const TTValue& value);
	
	/** */
	TTPresetPtr getPresetCurrent();
	
	/** */
	TTPresetPtr getPresetWithName(TTSymbolPtr name);
	
	/** */
	TTErr refreshList();
	
	/** */
	TTErr notifyNamesObservers();
};

typedef TTPresetManager* TTPresetManagerPtr;

#endif // __TT_PRESET_MANAGER_H__
