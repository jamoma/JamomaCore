/* 
 * A PresetManager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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

class TTMODULAR_EXPORT TTPresetManager : public TTObject
{
	TTCLASS_SETUP(TTPresetManager)
	
public:
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE : the address of the preset manager in the directory
	TTValue				mNames;							///< ATTRIBUTE : all preset names
	TTValue				mCurrent;						///< ATTRIBUTE : <index, name> of the current preset

private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
	TTListPtr			mPresetList;					///< a list containing <TTPresetPtr> sorted by Number attribute
	TTUInt8				mCurrentIndex;					///< ATTRIBUTE : the position of the current preset in the list (from 1 to list size, 0 mean no current index)
	
public:
	
	TTErr New();
	
	TTErr Store(const TTValue& value);
	TTErr StoreCurrent();
	TTErr StoreNext(const TTValue& value);
	TTErr StorePrevious(const TTValue& value);
	
	TTErr Recall(const TTValue& value);
	TTErr RecallCurrent();
	TTErr RecallNext();
	TTErr RecallPrevious();
	
	TTErr Remove(const TTValue& value);
	TTErr RemoveCurrent();
	TTErr RemoveNext();
	TTErr RemovePrevious();
	
private :
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr writeAsXml(const TTValue& value);
	TTErr readFromXml(const TTValue& value);
	
	/* TODO :
	 TTErr writeAsText(const TTValue& value);											// pass a text buffer ?
	 TTErr readFromText(const TTValue& value);											// pass a text buffer ?
	 */
	
	/** */
	TTErr getNames(TTValue& value);
	
	/** */
	TTErr getCurrent(TTValue& value);
		
	/** */
	TTErr setAddress(const TTValue& value);
	
	TTPresetPtr getPresetCurrent();
	TTPresetPtr getPresetWithName(TTSymbolPtr name);
	
	TTErr refreshList();
	
	TTErr notifyNamesObservers();
};

typedef TTPresetManager* TTPresetManagerPtr;

#endif // __TT_PRESET_MANAGER_H__
