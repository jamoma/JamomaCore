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
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE: the address of the preset manager in the directory
	
private:
	
	TTNodeDirectoryPtr	mDirectory;						///< the directory
	TTListPtr			mPresetList;					///< a list containing <TTPresetPtr> sorted by Number attribute
	TTUInt8				mCurrentIndex;					///< the position of the current preset in the list (from 1 to list size, 0 mean no current index)
	
	TTCallbackPtr		mReturnValueCallback;			///< a way to return received value to the owner of this preset manager
	
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
	
private :
	
	// needed to be handled by a TTXmlHandler
	TTErr writeAsXml(const TTValue& value);
	TTErr readFromXml(const TTValue& value);
	
	/* TODO :
	 TTErr writeAsText(const TTValue& value);											// pass a text buffer ?
	 TTErr readFromText(const TTValue& value);											// pass a text buffer ?
	 */
	
	TTErr setAddress(const TTValue& value);
	
	TTPresetPtr getPresetCurrent();
	TTPresetPtr getPresetWithName(TTSymbolPtr name);
};

typedef TTPresetManager* TTPresetManagerPtr;

#endif // __TT_PRESET_MANAGER_H__
